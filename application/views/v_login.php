<?php
	 if ($this->session->userdata("usuario")) 
	 {	$this->data['usuario']=$this->session->userdata("usuario");
	 	$this->data['id_sujeto']=$this->session->userdata("id_sujeto");
	 	$this->load->view('v_panel',$this->data);
	 }
	 else{ 
	?>
<!doctype html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>sis_felles|Sistema Frutifelles</title>

	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/bootstrap.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/bootstrap-responsive.min.css">
	<link rel="stylesheet" href="<?php echo base_url(); ?>resource/css/style.css">

	<script src="<?php echo base_url(); ?>resource/js/jquery.min.js"></script>
	<script src="<?php echo base_url(); ?>resource/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container m_container">
		<div class="m_head">
			<p><span>Fruti Felles</span><br />Importaciones y exportaciones</p>
		</div>
		<form class="form-horizontal" method="post" action="<?php echo base_url().'acceder/sistema'; ?>">
			<p><input type="text" class="span3" name="txt_user" id="inputUser" placeholder="Usuario" required></p>
			<p><input type="password" class="span3" name="txt_password" id="inputPassword" placeholder="Password" required></p>
			<p><button type="submit" class="btn btn-warning">Ingresar</button></p>	
		</form>
		  		<?php if($error){?>

						<div class="log_alert alert alert-error">
							<a class="close" data-dismiss="alert">×</a>
		  					<b>	<?php echo $error; ?></b>
		  				</div>
		  		<?php } ?>
		
	</div>
</body>
</html>
<?php }?>