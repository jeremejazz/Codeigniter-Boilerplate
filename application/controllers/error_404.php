<?php 
class Error_404 extends CI_Controller 
{
    public function __construct() 
    {
        parent::__construct(); 
    } 

    public function index() 
    { 
        $this->output->set_status_header('404'); 
        //$data['content'] = 'error_404'; // View name 
        $this->load->view('error_404');//loading in my template 
    } 
} 
