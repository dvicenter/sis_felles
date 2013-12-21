<div id="module_register_nota">
		<select name="lst_producto" id="">
			<option value="0">-- Seleccione un producto --</option>
			<?php foreach ($productos as $producto): ?>
				<option value="<?php echo $producto['id_producto']; ?>"><?php echo $producto['nombre'] ?></option>
			<?php endforeach ?>
		</select>
	<form id="form_r_nota" enctype="multipart/form-data">
		<div id="queue"></div>
		<input type="file" name="f_xls" id="cargar_xls" multiple="true">
	</form>
	<div id="list_nota_detail">
		
	</div>
</div>
<script type="text/javascript">
		$(function() {
			$('#cargar_xls').uploadify({
				'buttonText' : 'Cargar Excel',
				'fileTypeExts' : '*.xls; *.xlsx;*.csv;',
				'swf'      : '<?php echo base_url()."resource/swf/uploadify.swf"; ?>',
				'uploader' : '<?php echo base_url()."c_nota/cargar_xls"; ?>',
				'onUploadSuccess' : function(file, data, response) {
		            $('#list_nota_detail').html(data);
		        }
			});
		});
	</script>