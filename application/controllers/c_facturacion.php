<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_facturacion extends CI_Controller {

	
	public function __construct()
    {	parent::__construct();
	    $this->load->helper('url');
	    $this->load->model('mantenimiento/m_producto');
	    $this->load->model('m_panel');
	    $this->load->library('session');
    }

	public function a_precio()
	{   
		$DATA['productos'] = $this->m_producto->getProducto();
		$DATA['comunidades'] = $this->m_panel->getComunidad();
		$this->load->view('module/v_actual_precio',$DATA);
	}

	public function boleta()
	{   
		$this->load->view('module/v_boleta');
	}

	public function factura()
	{   
		$this->load->view('module/v_factura');
	}

	function cargar_xls()
	{	
		$archivo = $_FILES['Filedata']["tmp_name"];
		$linea = file($archivo);
		$DATA['lineas'] = $linea;
		$this->load->view('module/list/l_table_nota',$DATA);
	}
}