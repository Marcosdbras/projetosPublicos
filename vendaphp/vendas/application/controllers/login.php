<?php if ( ! defined('BASEPATH')) 
	exit('No direct script access allowed');
	
/*	
 *	@author : Md. Moinuddin Kadir , Joyonto Roy
 *	date	: 10 December, 2013
 *	University Of Dhaka, Bangladesh
 *	Bijoy Stock Inventory Manager Pro
 *	http://codecanyon.net/user/tanvirdu
 */

class Login extends CI_Controller {

	
	function __construct()
	{
		parent::__construct();
		$this->load->model('crud_model');
		$this->load->database();
		$this->load->database();
		/*cache control*/
		$this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
		$this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 
	}
	
	/***default functin, redirects to login page if no admin logged in yet***/
	public function index()
	{
		
		if ($this->session->userdata('admin_login') == 1)
			redirect(base_url() . 'index.php?admin/dashboard', 'refresh');
		if ($this->session->userdata('client_login') == 1)
			redirect(base_url() . 'index.php?client/dashboard', 'refresh');
		
		$config = array(
			array(
				'field' => 'email',
				'label' => 'Email',
				'rules' => 'required|xss_clean|valid_email'
			),
			array(
				'field' => 'password',
				'label' => 'Password',
				'rules' => 'required|xss_clean|callback__validate_login'
			)
		);
		
		$this->form_validation->set_rules($config);
		$this->form_validation->set_message('_validate_login', ucfirst($this->input->post('login_type')) . ' Login failed!');
		$this->form_validation->set_error_delimiters('<div class="alert alert-error">
								<button type="button" class="close" data-dismiss="alert">×</button>', '</div>');
		
		if ($this->form_validation->run() == FALSE) {
			$this->load->view('login');
		} else {
		if ($this->session->userdata('admin_login') == 1)
			redirect(base_url() . 'index.php?admin/dashboard', 'refresh');
		if ($this->session->userdata('client_login') == 1)
			redirect(base_url() . 'index.php?client/dashboard', 'refresh');
		}
		
	}
	
	/***validate login****/
	function _validate_login($str)
	{
		if ($this->input->post('login_type') == '') {
			$this->session->set_flashdata('flash_message', get_phrase('select_account_type'));
			redirect(base_url() . 'index.php?login', 'refresh');
			return FALSE;
		}
		$query = $this->db->get_where($this->input->post('login_type'), array(
			'email' => $this->input->post('email'),
			'password' => $this->input->post('password')
		));
		if ($query->num_rows() > 0) {
			$row = $query->row();
			if ($this->input->post('login_type') == 'admin') {
				$this->session->set_userdata('admin_login', '1');
				$this->session->set_userdata('login_type', 'admin');
				$this->session->set_userdata('admin_id', $row->admin_id);
			}
			if ($this->input->post('login_type') == 'client') {
				$this->session->set_userdata('client_login', '1');
				$this->session->set_userdata('login_type', 'client');
				$this->session->set_userdata('client_id', $row->client_id);
			}
			return TRUE;
		} else {
			$this->session->set_flashdata('flash_message', get_phrase('login_failed'));
			redirect(base_url() . 'index.php?login', 'refresh');
			return FALSE;
		}
	}
	
	/***DEFAULT NOR FOUND PAGE*****/
	function four_zero_four()
	{
		$this->load->view('four_zero_four');
	}
	

	/***RESET AND SEND PASSWORD TO REQUESTED EMAIL****/
	function reset_password()
	{
		$account_type = $this->input->post('account_type');
		if ($account_type == "") {
			redirect(base_url(), 'refresh');
		}
		$email  = $this->input->post('email');
		$result = $this->email_model->password_reset_email($account_type, $email); //SEND EMAIL ACCOUNT OPENING EMAIL
		if ($result == true) {
			$this->session->set_flashdata('flash_message', get_phrase('password_sent'));
		} else if ($result == false) {
			$this->session->set_flashdata('flash_message', get_phrase('account_not_found'));
		}
		
		
	}
	/*******LOGOUT FUNCTION *******/
	function logout()
	{
		$this->session->unset_userdata();
		$this->session->sess_destroy();
		$this->session->set_flashdata('logout_notification', 'logged_out');
		redirect(base_url() . 'index.php?login', 'refresh');
	}
	
}