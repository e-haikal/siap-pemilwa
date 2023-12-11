<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Utama extends CI_Controller {

	function __construct ()
    {
        parent:: __construct();
        $this->load->helper('url');
    }

	public function index()
	{
        if ($this->session->userdata('status') != 'login') {
            redirect('admin/masuk');
        } else {
            $data['petugas'] = $this->db->get('petugas')->num_rows();
            $data['kandidat'] = $this->db->get('kandidat')->num_rows();
            $data['pemilih'] = $this->db->get('pemilih')->num_rows();
            $data['pilih'] = $this->db->get('pilih')->num_rows();
            $data['kndt'] = $this->db->get('kandidat')->result();
            $this->load->view('admin/index', $data);
        }
    }
}
