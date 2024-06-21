<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Pengumuman_model');
    }

    public function index()
    {
        $data['pengumuman'] = $this->Pengumuman_model->get_all_pengumuman();
        $this->load->view('pengumuman', $data); // Tampilkan view pengumuman untuk user
    }
}
?>
