<div id="module_actual_precio">
	<div><h3>Actualizar Nota</h3></div>
	<form id="form_r_nota" enctype="multipart/form-data">
			<div class="sec_form">
				<label for="producto">Producto:</label>
				<select name="lst_producto" id="producto">
					<option value="0">-- Seleccione un producto --</option>
					<?php foreach ($productos as $producto): ?>
						<option value="<?php echo $producto['id_producto']; ?>"><?php echo $producto['nombre'] ?></option>
					<?php endforeach ?>
				</select>
				
			</div>
			<div class="sec_form">
				<label for="fecha">Fecha:</label>
				<input type="date" name="txt_fecha" id="fecha">	
			</div>
		<div class="sec_form">
			<label for="comunidad">Comunidad:</label>
			<select name="lst_comunidad" id="comunidad">
				<option value="0">-- Seleccione una Comunidad --</option>
				<?php foreach ($comunidades as $comunidad): ?>
					<option value="<?php echo $comunidad['id_comunidad']; ?>"><?php echo $comunidad['nombre'] ?></option>
				<?php endforeach ?>
			</select>		
		</div>
	</form>
	<div id="list_table_precio">
		<table class="table table-striped table-bordered" >
		<thead>
			<tr>
				<th>Calibre</th>
				<th>Precio</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>0.1</td>
				<td>150</td>
				<td>
					<a href="" class="btn"><i class="icon-edit"></i></a>
					<a href="" class="btn btn-danger"><i class="icon-remove icon-white"></i></a>
				</td>
			</tr>
		</tbody>

	</table>	
	</div>
</div>