<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_producto extends CI_Model{
 	public function __construct()
	{	
        parent::__construct();
	    $this->load->database();
	}
	public function getProducto()
    {
    	$query = $this->db->select('*');
    	$this->db->where('e_active','1');
        $query = $this->db->get('t_producto');
    	return $query->result_array();
    }

      
 	public function isLogged()
    {	if(isset($this->session->userdata['usuario']))
        {	return TRUE;
        }
        else
        {	return FALSE;
        }
       
    }
}