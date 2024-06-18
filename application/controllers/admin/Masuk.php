<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Masuk extends CI_Controller {

	function __construct ()
    {
        parent:: __construct();
        $this->load->helper('url');
    }

	public function index()
	{
        $this->load->view('admin/masuk/index');
    }

    public function indexv2()
	{
        $this->load->view('admin/masuk/indexv2');
    }
    public function aksi_login(){
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $cek=$this->db->get_where('petugas', array('username' => $username, 'password' => $password));
        $banyak = $cek->num_rows();
        $data = $cek->result();
        if ($banyak >= 1){
            $data_session = array(
                'username' => $data[0]->username,
                'id_petugas' => $data[0]->id_petugas,
                'status' => "login",
            );
            $this->session->set_userdata($data_session);
            redirect('admin/utama');
        } else {
            $this->session->set_flashdata('error', 'Username atau Password masih salah');
            redirect('admin/masuk');
        }
    }

    public function logout()
    {
        session_destroy();
        redirect('admin/utama');
    }
}
