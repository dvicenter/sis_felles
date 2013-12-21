<div id="mod_proveedor" align="center">
	<form class="form-horizontal form_proveedor">
	  <div class="sec">
		  <div class="control-group">
		    <label class="control-label" for="inputEmail">Apellido Paterno</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Apellido Paterno">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Nombres</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Nombres">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">DNI</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="DNI">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Telefono</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Telefono">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Direccion</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Direccion">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Comunidad</label>
		    <div class="controls">
		      <select name="" id="">
		      	<option value="0">-- Seleecione una --</option>
		      	<option value="1">Huacho</option>
		      	<option value="2">Lima</option>
		      </select>
		    </div>
		  </div>
		  <div class="control-group">
		   	<input type="reset" value="Cancelar" class="btn">
		    <input type="submit" class="btn btn-primary" value="Guardar">
		  </div>
	  </div>
	  <div class="sec">
	  	<div class="control-group">
		    <label class="control-label" for="inputEmail">Apellido Materno</label>
		    <div class="controls">
		      <input type="text" id="inputEmail" placeholder="Apellido Materno">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Fecha Nacimiento</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Fecha Nacimiento">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">RUC</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="RUC">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Celular</label>
		    <div class="controls">
		      <input type="text" id="inputPassword" placeholder="Celular">
		    </div>
		  </div>
		  <div class="control-group">
		    <label class="control-label" for="inputPassword">Tipo de Proveedor</label>
		    <div class="controls">
		      <select name="" id="">
		      	<option value="0">-- Seleecione una --</option>
		      	<option value="1">Independiente</option>
		      	<option value="2">Comunidad</option>
		      </select>
		    </div>
		  </div>		  
	  </div>
	</form>
	<?php $this->load->view('module/list/l_table_proveedor'); ?>	
</div>