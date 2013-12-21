<div id="module_actual_nota">
	<div><h3>Actualizar Nota</h3></div>
	<form id="form_r_nota" enctype="multipart/form-data">
		<p>
			<div>
				<label for="fecha">Fecha:</label>
				<input type="date" name="txt_fecha" id="fecha">		
			</div>
			<div>
				<div><p>Nota</p></div>
				<div></div>
			</div>
		</p>
		<p>
			<label for="producto">Producto:</label>
			<select name="lst_producto" id="producto">
				<option value="0">-- Seleccione un producto --</option>
				<?php foreach ($productos as $producto): ?>
					<option value="<?php echo $producto['id_producto']; ?>"><?php echo $producto['nombre'] ?></option>
				<?php endforeach ?>
			</select>
			<label for="comunidad">Comunidad:</label>
			<select name="lst_comunidad" id="comunidad">
				<option value="0">-- Seleccione una Comunidad --</option>
				<?php foreach ($comunidades as $comunidad): ?>
					<option value="<?php echo $comunidad['id_comunidad']; ?>"><?php echo $comunidad['nombre'] ?></option>
				<?php endforeach ?>
			</select>		
		</p>
	</form>
	<div id="list_nota_detail">
		
	</div>
</div>