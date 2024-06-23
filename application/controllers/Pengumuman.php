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
        
        // Determine if the user is coming from homepage or dashboard
        $data['from_homepage'] = $this->input->get('from_homepage') == 'true';

        if ($data['from_homepage']) {
            $this->load->view('pengumuman_home/semua_pengumuman', $data);
        } else {
            $this->load->view('pengumuman', $data);
        }
    }
    

    public function detail($id)
    {
        $data['pengumuman'] = $this->Pengumuman_model->get_by_id($id);
        
        if (!$data['pengumuman']) {
            show_404();
        }

        // Determine if the user is coming from homepage or dashboard
        $data['from_homepage'] = $this->input->get('from_homepage') == 'true';

        // Load appropriate view based on source
        if ($data['from_homepage']) {
            $this->load->view('pengumuman_home/pengumuman_home_detail', $data);
        } else {
            $this->load->view('pengumuman_detail', $data);
        }
    }

    
}
?>
