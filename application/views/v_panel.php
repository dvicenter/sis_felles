<!doctype html>
<html lang="es">
<head>
	<title>SIS_FELLES | Sistema Frutifelles</title>
	
	<meta charset="UTF-8">
	<meta name="keyboards" content="Sistema de Frutifelles"/>
	<meta name="author" content="Vicente Rojas, Diego;"/>

	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/bootstrap-responsive.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/style.css">

	<script src="<?php echo base_url(); ?>resource/js/jquery.min.js"></script>
	<script src="<?php echo base_url(); ?>resource/js/bootstrap.min.js"></script>
	
	<script> base_url="<?php echo base_url();?>"</script>

	<script src="<?php echo base_url(); ?>resource/js/principal.js"></script>
	
</head>
<body>
	<header>
		<?php $this->load->view('panel/header');?>
	</header>
	<section class="contanier">
		<section class="browser">
			<?php $this->load->view('panel/browser');?>
		</section>
		<section class="main_content" id="module_content">
			
		</section>
	</section>
	<footer>
		<div style="text-align:center;">
			©2013 FRUTIFELLES | Importaciones y Exportaciones
			<p>
				Facultad de Ingenier&iacute;a - Ingenier&iacute;a de Sistemas - Sistema Web Para el Control y Gesti&oacute;n de Frutas
			</p>
		</div>
	</footer>
</body>
</html>