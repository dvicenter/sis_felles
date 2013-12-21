<div id="mod_producto" align="center">
	<form class="form-horizontal form_proveedor">
	  <div class="sec">
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Nombre</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Nombre">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Descripcion</label>
		    <div class="controls">
		      <textarea name="" id="" class="span4" cols="50" rows="4" placeholder="Descripcion"></textarea>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Tipo Producto</label>
		    <div class="controls">
		      <select name="" id="">
		      	<option value="0">-- Seleecione una --</option>
		      	<option value="1">Exportacion</option>
		      	<option value="2">Importacion</option>
		      </select>
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Activo</label>
		    <div class="controls">
		      <input type="checkbox" id="inputPassword" >
		    </div>
		  </div>
		  <div class="control-group">
		   	<input type="reset" value="Cancelar" class="btn">
		    <input type="submit" class="btn btn-primary" value="Guardar">
		  </div>
	  </div>
	</form>
	<?php $this->load->view('module/list/l_table_producto'); ?>	
</div>