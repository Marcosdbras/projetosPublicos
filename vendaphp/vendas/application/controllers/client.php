<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

/*	
 *	@author : Md. Moinuddin Kadir , Joyonto Roy
 *	date	: 10 December, 2013
 *	University Of Dhaka, Bangladesh
 *	Bijoy Stock Inventory Manager Pro
 *	http://codecanyon.net/user/tanvirdu
 */

class Client extends CI_Controller
{
    
    
    function __construct()
    {
        parent::__construct();
        $this->load->database();
        /*cache control*/
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }
    
    /***default functin, redirects to login page if no client logged in yet***/
    public function index()
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($this->session->userdata('client_login') == 1)
            redirect(base_url() . 'index.php?client/dashboard', 'refresh');
    }
    
    /***CLIENT DASHBOARD***/
    function dashboard()
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url(), 'refresh');
        $page_data['page_name']  = 'dashboard';
        $page_data['page_title'] = get_phrase('client_dashboard');
        $this->load->view('index', $page_data);
    }
    
    /****MANAGE invoice*****/
    function invoice($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['client']        = $this->input->post('client');
            $data['order']         = $this->input->post('order');
            $data['total_amount']  = $this->input->post('total_amount');
            $data['main_amount']   = $this->input->post('main_amount');
            $data['tax_rate']      = $this->input->post('tax_rate');
            $data['shipping_cost'] = $this->input->post('shipping_cost');
            $data['note']          = $this->input->post('note');
            $data['date']          = $this->input->post('date');
            $data['status']        = $this->input->post('status');
            $data['due_date']      = $this->input->post('due_date');
            $data['name']          = $this->input->post('name');
            $data['tax_amount']    = $this->input->post('tax_amount');
            $this->db->insert('invoice', $data);
            redirect(base_url() . 'index.php?client/invoice/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['client']        = $this->input->post('client');
            $data['order']         = $this->input->post('order');
            $data['total_amount']  = $this->input->post('total_amount');
            $data['main_amount']   = $this->input->post('main_amount');
            $data['tax_rate']      = $this->input->post('tax_rate');
            $data['shipping_cost'] = $this->input->post('shipping_cost');
            $data['note']          = $this->input->post('note');
            $data['date']          = $this->input->post('date');
            $data['status']        = $this->input->post('status');
            $data['due_date']      = $this->input->post('due_date');
            $data['name']          = $this->input->post('name');
            $data['tax_amount']    = $this->input->post('tax_amount');
            $this->db->where('invoice_id', $param2);
            $this->db->update('invoice', $data);
            redirect(base_url() . 'index.php?client/invoice/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']   = true;
            $page_data['current_invoice_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('invoice', array(
                'invoice_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('invoice_id', $param2);
            $this->db->delete('invoice');
            redirect(base_url() . 'index.php?client/invoice/', 'refresh');
        }
        $page_data['invoice']    = $this->db->get('invoice')->result_array();
        $page_data['page_name']  = 'invoice';
        $page_data['page_title'] = get_phrase('manage_invoice');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE message*****/
    function message($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['sender']        = $this->input->post('sender');
            $data['sender_type']   = $this->input->post('sender_type');
            $data['receiver']      = $this->input->post('receiver');
            $data['receiver_type'] = $this->input->post('receiver_type');
            $data['subject']       = $this->input->post('subject');
            $data['body']          = $this->input->post('body');
            $data['time']          = $this->input->post('time');
            $data['date']          = $this->input->post('date');
            $this->db->insert('message', $data);
            redirect(base_url() . 'index.php?client/message/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['sender']        = $this->input->post('sender');
            $data['sender_type']   = $this->input->post('sender_type');
            $data['receiver']      = $this->input->post('receiver');
            $data['receiver_type'] = $this->input->post('receiver_type');
            $data['subject']       = $this->input->post('subject');
            $data['body']          = $this->input->post('body');
            $data['time']          = $this->input->post('time');
            $data['date']          = $this->input->post('date');
            $this->db->insert('message', $data);
            redirect(base_url() . 'index.php?client/message/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']   = true;
            $page_data['current_message_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('message', array(
                'message_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('message_id', $param2);
            $this->db->delete('message');
            redirect(base_url() . 'index.php?client/message/', 'refresh');
        }
        $page_data['message']    = $this->db->get('message')->result_array();
        $page_data['page_name']  = 'message';
        $page_data['page_title'] = get_phrase('manage_message');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE order*****/
    function order($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['client']      = $this->input->post('client');
            $data['product']     = $this->input->post('product');
            $data['quantity']    = $this->input->post('quantity');
            $data['total_price'] = $this->input->post('total_price');
            $data['date']        = $this->input->post('date');
            $data['rate']        = $this->input->post('rate');
            $data['status']      = $this->input->post('status');
            $this->db->insert('order', $data);
            redirect(base_url() . 'index.php?client/order/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['client']      = $this->input->post('client');
            $data['product']     = $this->input->post('product');
            $data['quantity']    = $this->input->post('quantity');
            $data['total_price'] = $this->input->post('total_price');
            $data['date']        = $this->input->post('date');
            $data['rate']        = $this->input->post('rate');
            $data['status']      = $this->input->post('status');
            $this->db->where('order_id', $param2);
            $this->db->update('order', $data);
            redirect(base_url() . 'index.php?client/order/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile'] = true;
            $page_data['current_order_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('order', array(
                'order_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('order_id', $param2);
            $this->db->delete('order');
            redirect(base_url() . 'index.php?client/order/', 'refresh');
        }
        $page_data['order']      = $this->db->get('order')->result_array();
        $page_data['page_name']  = 'order';
        $page_data['page_title'] = get_phrase('manage_order');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE product*****/
    function product($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url(), 'refresh');
        else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']   = true;
            $page_data['current_product_id'] = $param2;
        }
        $page_data['product']    = $this->db->get('product')->result_array();
        $page_data['page_name']  = 'product';
        $page_data['page_title'] = get_phrase('manage_product');
        $this->load->view('index', $page_data);
    }
    
    
    /*****SITE/SYSTEM SETTINGS*********/
    function system_settings($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        
        if ($param2 == 'do_update') {
            $this->db->where('type', $param1);
            $this->db->update('settings', array(
                'description' => $this->input->post('description')
            ));
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?client/system_settings/', 'refresh');
        }
        if ($param1 == 'upload_logo') {
            move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploads/logo.png');
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?client/system_settings/', 'refresh');
        }
        $page_data['page_name']  = 'system_settings';
        $page_data['page_title'] = get_phrase('system_settings');
        $page_data['settings']   = $this->db->get('settings')->result_array();
        $this->load->view('index', $page_data);
    }
    
    /******MANAGE OWN PROFILE AND CHANGE PASSWORD***/
    function manage_profile($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('client_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($param1 == 'update_profile_info') {
            $data['name']    = $this->input->post('name');
            $data['address'] = $this->input->post('address');
            $data['phone']   = $this->input->post('phone');
            $data['email']   = $this->input->post('email');
            
            $this->db->where('client_id', $this->session->userdata('client_id'));
            $this->db->update('client', $data);
            $this->session->set_flashdata('flash_message', get_phrase('account_updated'));
            redirect(base_url() . 'index.php?client/manage_profile/', 'refresh');
        }
        if ($param1 == 'change_password') {
            $data['password']             = $this->input->post('password');
            $data['new_password']         = $this->input->post('new_password');
            $data['confirm_new_password'] = $this->input->post('confirm_new_password');
            
            $current_password = $this->db->get_where('client', array(
                'client_id' => $this->session->userdata('client_id')
            ))->row()->password;
            if ($current_password == $data['password'] && $data['new_password'] == $data['confirm_new_password']) {
                $this->db->where('client_id', $this->session->userdata('client_id'));
                $this->db->update('client', array(
                    'password' => $data['new_password']
                ));
                $this->session->set_flashdata('flash_message', get_phrase('password_updated'));
            } else {
                $this->session->set_flashdata('flash_message', get_phrase('password_mismatch'));
            }
            redirect(base_url() . 'index.php?client/manage_profile/', 'refresh');
        }
        $page_data['page_name']  = 'manage_profile';
        $page_data['page_title'] = get_phrase('manage_profile');
        $page_data['edit_data']  = $this->db->get_where('client', array(
            'client_id' => $this->session->userdata('client_id')
        ))->result_array();
        $this->load->view('index', $page_data);
    }
    
}
