<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_nota extends CI_Controller {

	
	public function __construct()
    {	parent::__construct();
	    $this->load->helper('url');
	    $this->load->model('mantenimiento/m_producto');
	    $this->load->library('session');
    }

	public function index()
	{   
		$DATA['productos'] = $this->m_producto->getProducto();
		$this->load->view('module/v_register_nota',$DATA);
	}

	function cargar_xls()
	{	
		$archivo = $_FILES['Filedata']["tmp_name"];
		$linea = file($archivo);
		$DATA['lineas'] = $linea;
		$this->load->view('module/list/l_table_nota',$DATA);
	}
}