<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/*	
*	@author : Joyonto Roy
*	date	: 4 December, 2013
*	University Of Dhaka, Bangladesh
*   Nulled By Vokey  
*	Ekattor School & College Management System - Pro version
*	http://codecanyon.net/user/joyontaroy
*/


class Install extends CI_Controller {

	function __construct()
    {
        parent::__construct();	
		$this->load->helper('url');
		$this->load->helper('file');
		// Cache control
		$this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
        $this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 
	}
	
	function index()
	{
		$this->load->view('install/index');
	}
	
	// -----------------------------------------------------------------------------------
	
	/*
	 * Install the script here
	 */
	function do_install()
	{
		$db_verify				=	$this->check_db_connection();
		
		if($db_verify == true)
		{
			// Replace the database settings
			$data = read_file('./application/config/database.php');
			$data = str_replace('db_name',		$this->input->post('db_name'),		$data);
			$data = str_replace('db_uname',		$this->input->post('db_uname'),		$data);
			$data = str_replace('db_password',	$this->input->post('db_password'),	$data);						
			$data = str_replace('db_hname',		$this->input->post('db_hname'),		$data);
			write_file('./application/config/database.php', $data);
			
			// Replace new default routing controller
			$data2 = read_file('./application/config/routes.php');
			$data2 = str_replace('install','login',$data2);
			write_file('./application/config/routes.php', $data2);
			
			
			// Run the installer sql schema		
			$this->load->database();
			
			$schema = read_file('./uploads/schoolmanager.sql');
  		
			$query = rtrim( trim($schema), "\n;");
			$query_list = explode(";", $query);
			
			foreach($query_list as $query)
				 $this->db->query($query);
				 
				 
			// Replace the admin login credentials
			$this->db->where('admin_id' , 1);
			$this->db->update('admin' , array('email'	=>	$this->input->post('email'),
												'password'	=>	$this->input->post('password')));
			
			// Replace the system name						
			$this->db->where('type', 'system_name');
			$this->db->update('settings', array(
				'description' => $this->input->post('system_name')
			));
			
			// Replace the system title
			$this->db->where('type', 'system_title');
			$this->db->update('settings', array(
				'description' => $this->input->post('system_name')
			));
			
		
			// Redirect to login page after completing installation
			$this->session->set_flashdata('installation_result' , 'success');
			redirect(base_url() , 'refresh');
		}
		else 
		{
			$this->session->set_flashdata('installation_result' , 'failed');
			redirect(base_url().'index.php?install' , 'refresh');
		}
	}
		
	// -------------------------------------------------------------------------------------------------
	
	/* 
	 * Database validation check from user input settings
	 */
	function check_db_connection()
	{
		$link	=	@mysql_connect($this->input->post('db_hname'),
						$this->input->post('db_uname'),
							$this->input->post('db_password'));
		if(!$link)
		{
			@mysql_close($link);
		 	return false;
		}
		
		$db_selected	=	mysql_select_db($this->input->post('db_name'), $link);
		if (!$db_selected)
		{
			@mysql_close($link);
		 	return false;
		}
		
		@mysql_close($link);
		return true;
	}
	
	// ------------------------------------------------------------------------------------------------
	
	/* 
	 * Item purchase verification by envato api
	 */
	
	
}

/* End of file install.php */
/* Location: ./system/application/controllers/install.php */