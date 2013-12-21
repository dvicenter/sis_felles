<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_proveedor extends CI_Model{
 	public function __construct()
	{	
        parent::__construct();
	    $this->load->database();
	}
	public function getProveedor()
    {
        $this->db->select('s.*,p.*');
		$this->db->from('t_sujeto s');
		$this->db->join('t_proovedor p', 's.id_sujeto = p.id_proveedor');

		$query = $this->db->get();
    	return $query->result_array();
    }
}