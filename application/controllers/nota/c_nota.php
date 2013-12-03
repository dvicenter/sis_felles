<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C_nota extends CI_Controller {

	
	public function __construct()
    {	parent::__construct();
	    $this->load->helper('url');
	    $this->load->model('m_login');
	    $this->load->helper('form');
	    $this->load->library('form_validation');
	    $this->load->library('session');
    }

	public function index()
	{   
		$this->load->view('module/v_register_nota');
	}

	function cerrar_sesion(){
		$this->data['error']="";
		if ($this->session->userdata("usuario")==TRUE) 
		{	$this->session->sess_destroy();
			$this->load->view('v_login',$this->data);
		}
		else
		{
			$this->load->view('v_login',$this->data);
		}
	}
}