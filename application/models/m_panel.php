<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_panel extends CI_Model{
 	public function __construct()
	{	
        parent::__construct();
	    $this->load->database();
	}
	public function getComunidad()
    {
    	$query = $this->db->select('*');
        $query = $this->db->get('t_comunidad');
    	return $query->result_array();
    }
}