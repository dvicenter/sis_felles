<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_login extends CI_Model{
 	public function __construct()
	{	
        parent::__construct();
        $this->load->library('session');
	    $this->load->database();
	}
	public function getLogin($username,$password)
    {
	    $data = array(
	    'usuario' => $username,
	    'contrasenia' => $password,
	    'e_active'=>'1'
	    );
        /*$query = $this->db->select('*');
        $this->db->where('usuario',$username);
        $this->db->where('contrasenia',$password);
        $this->db->where('e_active','1');
        $query = $this->db->get('t_usuario');*/
        $query = $this->db->get_where('t_usuario',$data);
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
