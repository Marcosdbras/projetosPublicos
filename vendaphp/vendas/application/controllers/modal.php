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

class Modal extends CI_Controller
{
    
    
    function __construct()
    {
        parent::__construct();
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
        
    }
    
    
    function popup($param1 = '', $param2 = '', $param3 = '')
    {
        if ($param1 == 'admin_profile') {
            $page_data['current_admin_id'] = $param2;
        } else if ($param1 == 'edit_admin') {
            $page_data['edit_data'] = $this->db->get_where('admin', array(
                'admin_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'bulk_mail_profile') {
            $page_data['current_bulk_mail_id'] = $param2;
        } else if ($param1 == 'edit_bulk_mail') {
            $page_data['edit_data'] = $this->db->get_where('bulk_mail', array(
                'bulk_mail_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'category_profile') {
            $page_data['current_category_id'] = $param2;
        } else if ($param1 == 'edit_category') {
            $page_data['edit_data'] = $this->db->get_where('category', array(
                'category_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'client_profile') {
            $page_data['current_client_id'] = $param2;
        } else if ($param1 == 'edit_client') {
            $page_data['edit_data'] = $this->db->get_where('client', array(
                'client_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'group_profile') {
            $page_data['current_group_id'] = $param2;
        } else if ($param1 == 'edit_group') {
            $page_data['edit_data'] = $this->db->get_where('group', array(
                'group_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'invoice_profile') {
            $page_data['current_invoice_id'] = $param2;
        } else if ($param1 == 'edit_invoice') {
            $page_data['edit_data'] = $this->db->get_where('invoice', array(
                'invoice_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'message_profile') {
            $page_data['current_message_id'] = $param2;
        } else if ($param1 == 'reply_message') {
            $page_data['edit_data'] = $this->db->get_where('message', array(
                'message_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'order_profile') {
            $page_data['current_order_id'] = $param2;
        } else if ($param1 == 'edit_order') {
            $page_data['edit_data'] = $this->db->get_where('order', array(
                'order_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'product_profile') {
            $page_data['current_product_id'] = $param2;
        } else if ($param1 == 'edit_product') {
            $page_data['edit_data'] = $this->db->get_where('product', array(
                'product_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'transaction_profile') {
            $page_data['current_transaction_id'] = $param2;
        } else if ($param1 == 'edit_transaction') {
            $page_data['edit_data'] = $this->db->get_where('transaction', array(
                'transaction_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'type_profile') {
            $page_data['current_type_id'] = $param2;
        } else if ($param1 == 'edit_type') {
            $page_data['edit_data'] = $this->db->get_where('type', array(
                'type_id' => $param2
            ))->result_array();
        }
        
        
        $page_data['page_name'] = $param1;
        $this->load->view('modal', $page_data);
    }
}
