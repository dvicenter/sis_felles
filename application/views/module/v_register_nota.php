<div id="module_register_nota">
		<select name="lst_producto" id="">
			<option value="0">-- Seleccione un producto --</option>
			<?php foreach ($productos as $producto): ?>
				<option value="<?php echo $producto['id_producto']; ?>"><?php echo $producto['nombre'] ?></option>
			<?php endforeach ?>
		</select>
	<form id="form_r_nota">
		<div id="queue"></div>
		<input type="file" name="f_xls" id="cargar_xls" multiple="true">
	</form>
	<div id="list_nota_detail">
		
	</div>
</div>
<script type="text/javascript">
		<?php $timestamp = time();?>
		$(function() {
			$('#cargar_xls').uploadify({
				'buttonText' : 'Cargar Excel',
				'formData'     : {
					'timestamp' : '<?php echo $timestamp;?>',
					'token'     : '<?php echo md5('unique_salt' . $timestamp);?>'
				},
				'fileTypeExts' : '*.xls; *.xlsx;',
				'swf'      : 'resource/swf/uploadify.swf',
				'uploader' : '<?php echo base_url()."nota/c_nota/cargar_xls"; ?>',
				'onUploadSuccess' : function(file, data, response) {
		            $('#list_nota_detail').html(data);
		        }
			});
		});
	</script>