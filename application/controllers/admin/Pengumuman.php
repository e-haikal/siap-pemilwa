<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengumuman extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Pengumuman_model');
        $this->load->library('form_validation');
        $this->load->helper('url');
    }

    public function index() {
        $data['pengumuman'] = $this->Pengumuman_model->get_all_pengumuman();
        $this->load->view('admin/pengumuman/index', $data);
    }

    public function tambah() {
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/pengumuman/tambah_form');
        } else {
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['max_size'] = 2048;
            $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('gambar')) {
                $upload_data = $this->upload->data();
                $gambar = $upload_data['file_name'];

                $data = array(
                    'judul' => $this->input->post('judul'),
                    'isi' => $this->input->post('isi'),
                    'tanggal_posting' => date('Y-m-d'),
                    'gambar' => $gambar
                );

                $this->Pengumuman_model->insert_pengumuman($data);
                redirect('admin/pengumuman');
            } else {
                $error = array('error' => $this->upload->display_errors());
                $this->load->view('admin/pengumuman/tambah_form', $error);
            }
        }
    }

    public function edit($id) {
        $this->form_validation->set_rules('judul', 'Judul', 'required');
        $this->form_validation->set_rules('isi', 'Isi', 'required');

        $data['pengumuman'] = $this->Pengumuman_model->get_pengumuman_by_id($id);

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('admin/pengumuman/edit_form', $data);
        } else {
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['max_size'] = 2048;
            $config['encrypt_name'] = TRUE;

            $this->load->library('upload', $config);

            // Cek apakah ada file gambar yang diunggah
            if ($_FILES['gambar']['name']) {
                if ($this->upload->do_upload('gambar')) {
                    $upload_data = $this->upload->data();
                    $gambar = $upload_data['file_name'];
                } else {
                    $error = array('error' => $this->upload->display_errors());
                    $this->load->view('admin/pengumuman/edit_form', $error);
                    return;
                }
            } else {
                $gambar = $data['pengumuman']->gambar; // Gunakan gambar yang sudah ada
            }

            $data_update = array(
                'judul' => $this->input->post('judul'),
                'isi' => $this->input->post('isi'),
                'gambar' => $gambar
            );

            $this->Pengumuman_model->update_pengumuman($id, $data_update);
            redirect('admin/pengumuman');
        }
    }

    public function hapus($id) {
        $this->Pengumuman_model->delete_pengumuman($id);
        redirect('admin/pengumuman');
    }
}
?>
