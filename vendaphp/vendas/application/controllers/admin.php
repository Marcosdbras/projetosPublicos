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

class Admin extends CI_Controller
{
    
    
    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('date');
        /*cache control*/
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }
    
    /***default functin, redirects to login page if no admin logged in yet***/
    public function index()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($this->session->userdata('admin_login') == 1)
            redirect(base_url() . 'index.php?admin/dashboard', 'refresh');
    }
    
    /***ADMIN DASHBOARD***/
    function dashboard()
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        $page_data['page_name']  = 'dashboard';
        $page_data['page_title'] = get_phrase('admin_dashboard');
        $this->load->view('index', $page_data);
    }
    
    
    
    /****MANAGE category*****/
    function category($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['name']  = $this->input->post('name');
            $data['about'] = $this->input->post('about');
            $this->db->insert('category', $data);
            redirect(base_url() . 'index.php?admin/category/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['name']  = $this->input->post('name');
            $data['about'] = $this->input->post('about');
            $this->db->where('category_id', $param2);
            $this->db->update('category', $data);
            redirect(base_url() . 'index.php?admin/category/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']    = true;
            $page_data['current_category_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('category', array(
                'category_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('category_id', $param2);
            $this->db->delete('category');
            redirect(base_url() . 'index.php?admin/category/', 'refresh');
        }
        $page_data['category']   = $this->db->get('category')->result_array();
        $page_data['page_name']  = 'category';
        $page_data['page_title'] = get_phrase('manage_category');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE client*****/
    function client($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['email']           = $this->input->post('email');
            $data['password']        = $this->input->post('password');
            $data['name']            = $this->input->post('name');
            $data['creation_date']   = $this->input->post('creation_date');
            $data['account_balance'] = $this->input->post('account_balance');
            $data['about']           = $this->input->post('about');
            $data['address']         = $this->input->post('address');
            $data['phone']           = $this->input->post('phone');
            $data['store']           = $this->input->post('store');
            $data['group']           = $this->input->post('group');
            $this->db->insert('client', $data);
            
            $this->email_model->account_opening_email('client', $data['email']);
            redirect(base_url() . 'index.php?admin/client/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['email']           = $this->input->post('email');
            $data['password']        = $this->input->post('password');
            $data['name']            = $this->input->post('name');
            $data['creation_date']   = $this->input->post('creation_date');
            $data['account_balance'] = $this->input->post('account_balance');
            $data['about']           = $this->input->post('about');
            $data['address']         = $this->input->post('address');
            $data['phone']           = $this->input->post('phone');
            $data['store']           = $this->input->post('store');
            $data['group']           = $this->input->post('group');
            $this->db->where('client_id', $param2);
            $this->db->update('client', $data);
            redirect(base_url() . 'index.php?admin/client/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']  = true;
            $page_data['current_client_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('client', array(
                'client_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('client_id', $param2);
            $this->db->delete('client');
            redirect(base_url() . 'index.php?admin/client/', 'refresh');
        }
        $page_data['client']     = $this->db->get('client')->result_array();
        $page_data['page_name']  = 'client';
        $page_data['page_title'] = get_phrase('manage_client');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE group*****/
    function group($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['name']  = $this->input->post('name');
            $data['about'] = $this->input->post('about');
            $this->db->insert('group', $data);
            redirect(base_url() . 'index.php?admin/group/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['name']  = $this->input->post('name');
            $data['about'] = $this->input->post('about');
            $this->db->where('group_id', $param2);
            $this->db->update('group', $data);
            redirect(base_url() . 'index.php?admin/group/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile'] = true;
            $page_data['current_group_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('group', array(
                'group_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('group_id', $param2);
            $this->db->delete('group');
            redirect(base_url() . 'index.php?admin/group/', 'refresh');
        }
        $page_data['group']      = $this->db->get('group')->result_array();
        $page_data['page_name']  = 'group';
        $page_data['page_title'] = get_phrase('manage_group');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE invoice*****/
    function invoice($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
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
            redirect(base_url() . 'index.php?admin/invoice/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/invoice/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/invoice/', 'refresh');
        }
        $page_data['invoice']    = $this->db->get('invoice')->result_array();
        $page_data['page_name']  = 'invoice';
        $page_data['page_title'] = get_phrase('manage_invoice');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE message*****/
    function message($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
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
            redirect(base_url() . 'index.php?admin/message/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/message/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/message/', 'refresh');
        }
        $page_data['message']    = $this->db->get('message')->result_array();
        $page_data['page_name']  = 'message';
        $page_data['page_title'] = get_phrase('manage_message');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE order*****/
    function order($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
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
            redirect(base_url() . 'index.php?admin/order/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/order/', 'refresh');
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
            redirect(base_url() . 'index.php?admin/order/', 'refresh');
        }
        $page_data['order']      = $this->db->get('order')->result_array();
        $page_data['page_name']  = 'order';
        $page_data['page_title'] = get_phrase('manage_order');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE product*****/
    function product($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['category']      = $this->input->post('category');
            $data['name']          = $this->input->post('name');
            $data['type']          = $this->input->post('type');
            $data['description']   = $this->input->post('description');
            $data['creation_date'] = $this->input->post('creation_date');
            $data['quantity']      = $this->input->post('quantity');
            $data['quantity_unit'] = $this->input->post('quantity_unit');
            $data['price']         = $this->input->post('price');
            $this->db->insert('product', $data);
            redirect(base_url() . 'index.php?admin/product/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['category']      = $this->input->post('category');
            $data['name']          = $this->input->post('name');
            $data['type']          = $this->input->post('type');
            $data['description']   = $this->input->post('description');
            $data['creation_date'] = $this->input->post('creation_date');
            $data['quantity']      = $this->input->post('quantity');
            $data['quantity_unit'] = $this->input->post('quantity_unit');
            $data['price']         = $this->input->post('price');
            $this->db->where('product_id', $param2);
            $this->db->update('product', $data);
            redirect(base_url() . 'index.php?admin/product/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']   = true;
            $page_data['current_product_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('product', array(
                'product_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('product_id', $param2);
            $this->db->delete('product');
            redirect(base_url() . 'index.php?admin/product/', 'refresh');
        }
        $page_data['product']    = $this->db->get('product')->result_array();
        $page_data['page_name']  = 'product';
        $page_data['page_title'] = get_phrase('manage_product');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE transaction*****/
    function transaction($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['amount'] = $this->input->post('amount');
            $data['type']   = $this->input->post('type');
            $data['order']  = $this->input->post('order');
            $data['about']  = $this->input->post('about');
            $data['date']   = $this->input->post('date');
            $this->db->insert('transaction', $data);
            redirect(base_url() . 'index.php?admin/transaction/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['amount'] = $this->input->post('amount');
            $data['type']   = $this->input->post('type');
            $data['order']  = $this->input->post('order');
            $data['about']  = $this->input->post('about');
            $data['date']   = $this->input->post('date');
            $this->db->where('transaction_id', $param2);
            $this->db->update('transaction', $data);
            redirect(base_url() . 'index.php?admin/transaction/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile']       = true;
            $page_data['current_transaction_id'] = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('transaction', array(
                'transaction_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('transaction_id', $param2);
            $this->db->delete('transaction');
            redirect(base_url() . 'index.php?admin/transaction/', 'refresh');
        }
        $page_data['transaction'] = $this->db->get('transaction')->result_array();
        $page_data['page_name']   = 'transaction';
        $page_data['page_title']  = get_phrase('manage_transaction');
        $this->load->view('index', $page_data);
    }
    
    
    /****MANAGE type*****/
    function type($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url(), 'refresh');
        if ($param1 == 'create') {
            $data['name']     = $this->input->post('name');
            $data['category'] = $this->input->post('category');
            $data['about']    = $this->input->post('about');
            $this->db->insert('type', $data);
            redirect(base_url() . 'index.php?admin/type/', 'refresh');
        }
        if ($param1 == 'do_update') {
            $data['name']     = $this->input->post('name');
            $data['category'] = $this->input->post('category');
            $data['about']    = $this->input->post('about');
            $this->db->where('type_id', $param2);
            $this->db->update('type', $data);
            redirect(base_url() . 'index.php?admin/type/', 'refresh');
        } else if ($param1 == 'personal_profile') {
            $page_data['personal_profile'] = true;
            $page_data['current_type_id']  = $param2;
        } else if ($param1 == 'edit') {
            $page_data['edit_data'] = $this->db->get_where('type', array(
                'type_id' => $param2
            ))->result_array();
        }
        if ($param1 == 'delete') {
            $this->db->where('type_id', $param2);
            $this->db->delete('type');
            redirect(base_url() . 'index.php?admin/type/', 'refresh');
        }
        $page_data['type']       = $this->db->get('type')->result_array();
        $page_data['page_name']  = 'type';
        $page_data['page_title'] = get_phrase('manage_type');
        $this->load->view('index', $page_data);
    }
    
    
    /*****SITE/SYSTEM SETTINGS*********/
    function system_settings($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        
        if ($param2 == 'do_update') {
            $this->db->where('type', $param1);
            $this->db->update('settings', array(
                'description' => $this->input->post('description')
            ));
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?admin/system_settings/', 'refresh');
        }
        if ($param1 == 'upload_logo') {
            move_uploaded_file($_FILES['userfile']['tmp_name'], 'uploads/logo.png');
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?admin/system_settings/', 'refresh');
        }
        $page_data['page_name']  = 'system_settings';
        $page_data['page_title'] = get_phrase('system_settings');
        $page_data['settings']   = $this->db->get('settings')->result_array();
        $this->load->view('index', $page_data);
    }
    
    
    
    /*****LANGUAGE SETTINGS*********/
    function manage_language($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        
        if ($param1 == 'edit_phrase') {
            $page_data['edit_profile'] = $param2;
        }
        if ($param1 == 'update_phrase') {
            $language     = $param2;
            $total_phrase = $this->input->post('total_phrase');
            for ($i = 1; $i < $total_phrase; $i++) {
                //$data[$language]	=	$this->input->post('phrase').$i;
                $this->db->where('phrase_id', $i);
                $this->db->update('language', array(
                    $language => $this->input->post('phrase' . $i)
                ));
            }
            redirect(base_url() . 'index.php?admin/manage_language/edit_phrase/' . $language, 'refresh');
        }
        if ($param1 == 'do_update') {
            $language        = $this->input->post('language');
            $data[$language] = $this->input->post('phrase');
            $this->db->where('phrase_id', $param2);
            $this->db->update('language', $data);
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
        }
        if ($param1 == 'add_phrase') {
            $data['phrase'] = $this->input->post('phrase');
            $this->db->insert('language', $data);
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
        }
        if ($param1 == 'add_language') {
            $language = $this->input->post('language');
            $this->load->dbforge();
            $fields = array(
                $language => array(
                    'type' => 'LONGTEXT'
                )
            );
            $this->dbforge->add_column('language', $fields);
            
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
        }
        if ($param1 == 'delete_language') {
            $language = $param2;
            $this->load->dbforge();
            $this->dbforge->drop_column('language', $language);
            $this->session->set_flashdata('flash_message', get_phrase('settings_updated'));
            
            redirect(base_url() . 'index.php?admin/manage_language/', 'refresh');
        }
        $page_data['page_name']  = 'manage_language';
        $page_data['page_title'] = get_phrase('manage_language');
        //$page_data['language_phrases'] = $this->db->get('language')->result_array();
        $this->load->view('index', $page_data);
    }
    
    /******MANAGE OWN PROFILE AND CHANGE PASSWORD***/
    function manage_profile($param1 = '', $param2 = '', $param3 = '')
    {
        if ($this->session->userdata('admin_login') != 1)
            redirect(base_url() . 'index.php?login', 'refresh');
        if ($param1 == 'update_profile_info') {
            $data['email'] = $this->input->post('email');
            
            $this->db->where('admin_id', $this->session->userdata('admin_id'));
            $this->db->update('admin', $data);
            $this->session->set_flashdata('flash_message', get_phrase('account_updated'));
            redirect(base_url() . 'index.php?admin/manage_profile/', 'refresh');
        }
        if ($param1 == 'change_password') {
            $data['password']             = $this->input->post('password');
            $data['new_password']         = $this->input->post('new_password');
            $data['confirm_new_password'] = $this->input->post('confirm_new_password');
            
            $current_password = $this->db->get_where('admin', array(
                'admin_id' => $this->session->userdata('admin_id')
            ))->row()->password;
            if ($current_password == $data['password'] && $data['new_password'] == $data['confirm_new_password']) {
                $this->db->where('admin_id', $this->session->userdata('admin_id'));
                $this->db->update('admin', array(
                    'password' => $data['new_password']
                ));
                $this->session->set_flashdata('flash_message', get_phrase('password_updated'));
            } else {
                $this->session->set_flashdata('flash_message', get_phrase('password_mismatch'));
            }
            redirect(base_url() . 'index.php?admin/manage_profile/', 'refresh');
        }
        $page_data['page_name']  = 'manage_profile';
        $page_data['page_title'] = get_phrase('manage_profile');
        $page_data['edit_data']  = $this->db->get_where('admin', array(
            'admin_id' => $this->session->userdata('admin_id')
        ))->result_array();
        $this->load->view('index', $page_data);
    }
    
}
