<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_mantenimiento extends CI_Controller {

	
	public function __construct()
    {	parent::__construct();
	    $this->load->helper('url');
	    $this->load->library('session');
    }

	public function proveedor()
	{   
		$this->load->view('module/v_proveedor');
	}

	public function acopiador()
	{   
		$this->load->view('module/v_acopiador');
	}

	public function producto()
	{   
		$this->load->view('module/v_producto');
	}

	function cargar_xls()
	{	
		$archivo = $_FILES['Filedata']["tmp_name"];
		$linea = file($archivo);
		$DATA['lineas'] = $linea;
		$this->load->view('module/list/l_table_nota',$DATA);
	}
}