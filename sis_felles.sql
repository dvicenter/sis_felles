SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';



CREATE SCHEMA IF NOT EXISTS `sis_felles` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;

USE `sis_felles`;



-- -----------------------------------------------------

-- Table `Tbl_Region`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Region` (

  `idRegion` INT NOT NULL AUTO_INCREMENT ,

  `NombreReg` VARCHAR(50) NOT NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idRegion`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Provincia`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Provincia` (

  `idProvincia` INT NOT NULL AUTO_INCREMENT ,

  `idRegion` INT NOT NULL ,

  `NombreProv` VARCHAR(45) NOT NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idProvincia`) ,

  INDEX `idRegion` (`idRegion` ASC) ,

  CONSTRAINT `idRegion`

    FOREIGN KEY (`idRegion` )

    REFERENCES `Tbl_Region` (`idRegion` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Distrito`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Distrito` (

  `idDistrito` INT NOT NULL AUTO_INCREMENT ,

  `idProvincia` INT NOT NULL ,

  `NombreDist` VARCHAR(50) NOT NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idDistrito`) ,

  INDEX `idProvincia` (`idProvincia` ASC) ,

  CONSTRAINT `idProvincia`

    FOREIGN KEY (`idProvincia` )

    REFERENCES `Tbl_Provincia` (`idProvincia` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Comunidad`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Comunidad` (

  `idComunidad` INT NOT NULL AUTO_INCREMENT ,

  `idDistrito` INT NOT NULL ,

  `NombreComunidad` VARCHAR(45) NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idComunidad`) ,

  INDEX `idDistrito` (`idDistrito` ASC) ,

  CONSTRAINT `idDistrito`

    FOREIGN KEY (`idDistrito` )

    REFERENCES `Tbl_Distrito` (`idDistrito` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Tipo_Proveedor`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Tipo_Proveedor` (

  `idTipo_Proveedor` INT NOT NULL AUTO_INCREMENT ,

  `TipoProveedor` VARCHAR(40) NULL ,

  PRIMARY KEY (`idTipo_Proveedor`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Proveedor`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Proveedor` (

  `idProveedor` INT NOT NULL AUTO_INCREMENT ,

  `idComunidad` INT NOT NULL ,

  `idTipo_Proveedor` INT NOT NULL ,

  `ApellidoPaterno` VARCHAR(45) NULL ,

  `ApellidoMaterno` VARCHAR(45) NULL ,

  `Nombres` VARCHAR(150) NULL ,

  `Dni` VARCHAR(45) NULL ,

  `Ruc` VARCHAR(45) NULL ,

  `Telefono` VARCHAR(45) NULL ,

  `Celular` VARCHAR(45) NULL ,

  `Sexo` VARCHAR(45) NULL ,

  `FechaNac` DATETIME NULL ,

  `Direccion` VARCHAR(45) NULL ,

  PRIMARY KEY (`idProveedor`) ,

  INDEX `idComunidad` (`idComunidad` ASC) ,

  INDEX `idTipo_Proveedor` (`idTipo_Proveedor` ASC) ,

  CONSTRAINT `idComunidad`

    FOREIGN KEY (`idComunidad` )

    REFERENCES `Tbl_Comunidad` (`idComunidad` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `idTipo_Proveedor`

    FOREIGN KEY (`idTipo_Proveedor` )

    REFERENCES `Tbl_Tipo_Proveedor` (`idTipo_Proveedor` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_TipoEmpleado`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_TipoEmpleado` (

  `idTipoEmpleado` INT NOT NULL AUTO_INCREMENT ,

  `TipoEmpleado` VARCHAR(45) NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idTipoEmpleado`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Empleado`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Empleado` (

  `idEmpleado` INT NOT NULL AUTO_INCREMENT ,

  `idTipoEmpleado` INT NOT NULL ,

  `ApellidoPaterno` VARCHAR(45) NULL ,

  `ApellidoMaterno` VARCHAR(45) NULL ,

  `Nombres` VARCHAR(45) NULL ,

  `Dni` VARCHAR(45) NULL ,

  `Telefono` VARCHAR(45) NULL ,

  `Celular` VARCHAR(45) NULL ,

  `Direccion` VARCHAR(45) NULL ,

  `FechaNac` DATETIME NULL ,

  PRIMARY KEY (`idEmpleado`) ,

  INDEX `idTipoEmpleado` (`idTipoEmpleado` ASC) ,

  CONSTRAINT `idTipoEmpleado`

    FOREIGN KEY (`idTipoEmpleado` )

    REFERENCES `Tbl_TipoEmpleado` (`idTipoEmpleado` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Nota_Cab`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Nota_Cab` (

  `idNota_Cab` INT NOT NULL AUTO_INCREMENT ,

  `idProveedor` INT NOT NULL ,

  `idEmpleado` INT NOT NULL ,

  PRIMARY KEY (`idNota_Cab`) ,

  INDEX `idProveedor` (`idProveedor` ASC) ,

  INDEX `idEmpleado` (`idEmpleado` ASC) ,

  CONSTRAINT `idProveedor`

    FOREIGN KEY (`idProveedor` )

    REFERENCES `Tbl_Proveedor` (`idProveedor` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `idEmpleado`

    FOREIGN KEY (`idEmpleado` )

    REFERENCES `Tbl_Empleado` (`idEmpleado` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_TipoProducto`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_TipoProducto` (

  `idTipoProducto` INT NOT NULL AUTO_INCREMENT ,

  `NomTipoProd` VARCHAR(45) NULL ,

  `Descrip` VARCHAR(45) NULL ,

  PRIMARY KEY (`idTipoProducto`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Producto`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Producto` (

  `idProducto` INT NOT NULL AUTO_INCREMENT ,

  `NomProd` VARCHAR(45) NULL ,

  `Descrip` VARCHAR(45) NULL ,

  `Estado` VARCHAR(45) NULL ,

  PRIMARY KEY (`idProducto`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Calibre`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Calibre` (

  `idCalibre` INT NOT NULL AUTO_INCREMENT ,

  `idProducto` INT NOT NULL ,

  `NomCalibre` VARCHAR(5) NULL ,

  `Descrip` VARCHAR(45) NULL ,

  `Estado` VARCHAR(45) NULL ,

  PRIMARY KEY (`idCalibre`) ,

  INDEX `idProducto` (`idProducto` ASC) ,

  CONSTRAINT `idProducto`

    FOREIGN KEY (`idProducto` )

    REFERENCES `Tbl_Producto` (`idProducto` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Nota_Detalle`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Nota_Detalle` (

  `idNota_Det` INT NOT NULL ,

  `idNota_Cab` INT NOT NULL ,

  `idCalibre` INT NOT NULL ,

  `idProducto` INT NULL ,

  `idTipoProducto` INT NULL ,

  PRIMARY KEY (`idNota_Det`) ,

  INDEX `id_Nota_Cab` (`idNota_Cab` ASC) ,

  INDEX `idCalibre` (`idCalibre` ASC) ,

  INDEX `idProducto` (`idProducto` ASC) ,

  INDEX `idTipoProducto` (`idTipoProducto` ASC) ,

  CONSTRAINT `fk_id_Nota_Cab`

    FOREIGN KEY (`idNota_Cab` )

    REFERENCES `Tbl_Nota_Cab` (`idNota_Cab` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_idCalibre`

    FOREIGN KEY (`idCalibre` )

    REFERENCES `Tbl_Calibre` (`idCalibre` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_idProducto`

    FOREIGN KEY (`idProducto` )

    REFERENCES `Tbl_Producto` (`idProducto` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_idTipoProducto`

    FOREIGN KEY (`idTipoProducto` )

    REFERENCES `Tbl_TipoProducto` (`idTipoProducto` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_PrecioCab`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_PrecioCab` (

  `idPrecioCab` INT NOT NULL ,

  `idComunidad` INT NOT NULL ,

  PRIMARY KEY (`idPrecioCab`) ,

  INDEX `idComunidad` (`idComunidad` ASC) ,

  CONSTRAINT `fk_idComunidad`

    FOREIGN KEY (`idComunidad` )

    REFERENCES `Tbl_Comunidad` (`idComunidad` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Precio_Det`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Precio_Det` (

  `idPrecio_Det` INT NOT NULL AUTO_INCREMENT ,

  `idPrecioCab` INT NOT NULL ,

  `Fecha` DATETIME NULL ,

  `Precio` DECIMAL NULL ,

  PRIMARY KEY (`idPrecio_Det`) ,

  INDEX `idPrecioCab` (`idPrecioCab` ASC) ,

  CONSTRAINT `idPrecioCab`

    FOREIGN KEY (`idPrecioCab` )

    REFERENCES `Tbl_PrecioCab` (`idPrecioCab` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_Usuario`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_Usuario` (

  `idUsuario` INT NOT NULL AUTO_INCREMENT ,

  `Usuario` VARCHAR(45) NOT NULL ,

  `Contraseña` VARCHAR(45) NOT NULL ,

  PRIMARY KEY (`idUsuario`) )

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_BoletaCab`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_BoletaCab` (

  `idBoletaCab` INT NOT NULL AUTO_INCREMENT ,

  `NumBoleta` INT NOT NULL ,

  `Fecha` DATETIME NOT NULL ,

  `idProveedor` INT NOT NULL ,

  `idUsuario` INT NOT NULL ,

  `EstadoPago` VARCHAR(45) NULL ,

  `EstadoBol` VARCHAR(45) NULL ,

  PRIMARY KEY (`idBoletaCab`) ,

  INDEX `idProveedor` (`idProveedor` ASC) ,

  INDEX `idUsuario` (`idUsuario` ASC) ,

  CONSTRAINT `fk_idProveedor`

    FOREIGN KEY (`idProveedor` )

    REFERENCES `Tbl_Proveedor` (`idProveedor` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_idUsuario`

    FOREIGN KEY (`idUsuario` )

    REFERENCES `Tbl_Usuario` (`idUsuario` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_BoletaDet`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_BoletaDet` (

  `idBoletaDet` INT NOT NULL ,

  `idBoletaCab` INT NOT NULL ,

  `Cantidad` INT NULL ,

  `Descripcion` VARCHAR(45) NULL ,

  `PrecioU` DECIMAL NULL ,

  `Importe` DECIMAL NULL ,

  PRIMARY KEY (`idBoletaDet`) ,

  INDEX `idBoletaCab` (`idBoletaCab` ASC) ,

  CONSTRAINT `idBoletaCab`

    FOREIGN KEY (`idBoletaCab` )

    REFERENCES `Tbl_BoletaCab` (`idBoletaCab` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_FacturaCab`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_FacturaCab` (

  `idFacturaCab` INT NOT NULL AUTO_INCREMENT ,

  `NumFac` INT NULL ,

  `Fecha` VARCHAR(45) NULL ,

  `NumGuia` INT NULL ,

  `idProveedor` INT NULL ,

  `idUsuario` INT NULL ,

  `EstadoPago` VARCHAR(45) NULL ,

  `EstadoFac` VARCHAR(45) NULL ,

  PRIMARY KEY (`idFacturaCab`) ,

  INDEX `idProveedor` (`idProveedor` ASC) ,

  INDEX `idUsuario` (`idUsuario` ASC) ,

  CONSTRAINT `fk_idProveedor_facturacab`

    FOREIGN KEY (`idProveedor` )

    REFERENCES `Tbl_Proveedor` (`idProveedor` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION,

  CONSTRAINT `fk_idUsuario_facturacab`

    FOREIGN KEY (`idUsuario` )

    REFERENCES `Tbl_Usuario` (`idUsuario` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;





-- -----------------------------------------------------

-- Table `Tbl_FacturaDet`

-- -----------------------------------------------------

CREATE  TABLE IF NOT EXISTS `Tbl_FacturaDet` (

  `idFacturaDet` INT NOT NULL ,

  `idFacturaCab` INT NOT NULL ,

  `Cantidad` INT NULL ,

  `Descripcion` VARCHAR(45) NULL ,

  `PrecioU` DECIMAL NULL ,

  `ValorVenta` DECIMAL NULL ,

  `Igv` DECIMAL NULL ,

  PRIMARY KEY (`idFacturaDet`) ,

  INDEX `idFacturaCab` (`idFacturaCab` ASC) ,

  CONSTRAINT `idFacturaCab`

    FOREIGN KEY (`idFacturaCab` )

    REFERENCES `Tbl_FacturaCab` (`idFacturaCab` )

    ON DELETE NO ACTION

    ON UPDATE NO ACTION)

ENGINE = InnoDB;







SET SQL_MODE=@OLD_SQL_MODE;

SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;

SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

