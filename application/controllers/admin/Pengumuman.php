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
        $this->load->view('admin/pengumuman/index', $data);
    }

    public function tambah()
    {
        if ($this->input->post('submit')) {
            $judul = $this->input->post('judul');
            $isi = $this->input->post('isi');

            // Konfigurasi upload gambar
            $config['upload_path'] = './uploads/'; // Folder untuk menyimpan gambar
            $config['allowed_types'] = 'jpg|jpeg|png|gif';
            $config['max_size'] = 2048; // 2MB maksimal ukuran gambar
            $config['encrypt_name'] = TRUE; // Encrypt nama gambar

            $this->load->library('upload', $config);

            if ($this->upload->do_upload('gambar')) {
                $upload_data = $this->upload->data();
                $gambar = $upload_data['file_name']; // Nama file gambar yang diupload

                // Data untuk disimpan ke database
                $data = array(
                    'judul' => $judul,
                    'isi' => $isi,
                    'tanggal_posting' => date('Y-m-d'),
                    'gambar' => $gambar
                );

                // Panggil model untuk menyimpan data
                $this->Pengumuman_model->insert_pengumuman($data);

                redirect('admin/pengumuman'); // Redirect ke halaman daftar pengumuman admin
            } else {
                $error = array('error' => $this->upload->display_errors());
                // Tampilkan pesan error jika upload gagal
                $this->load->view('admin/pengumuman/tambah_form', $error);
            }
        } else {
            // Tampilkan form tambah pengumuman
            $this->load->view('admin/pengumuman/tambah_form');
        }
    }

    public function edit($id)
    {
        if ($this->input->post('submit')) {
            $judul = $this->input->post('judul');
            $isi = $this->input->post('isi');

            // Cek apakah ada gambar yang diupload
            if ($_FILES['gambar']['name']) {
                // Konfigurasi upload gambar
                $config['upload_path'] = './uploads/'; // Folder untuk menyimpan gambar
                $config['allowed_types'] = 'jpg|jpeg|png|gif';
                $config['max_size'] = 2048; // 2MB maksimal ukuran gambar
                $config['encrypt_name'] = TRUE; // Encrypt nama gambar

                $this->load->library('upload', $config);

                if ($this->upload->do_upload('gambar')) {
                    $upload_data = $this->upload->data();
                    $gambar = $upload_data['file_name']; // Nama file gambar yang diupload

                    // Data untuk diupdate ke database
                    $data = array(
                        'judul' => $judul,
                        'isi' => $isi,
                        'gambar' => $gambar
                    );
                } else {
                    $error = array('error' => $this->upload->display_errors());
                    // Tampilkan pesan error jika upload gagal
                    $this->load->view('admin/pengumuman/edit_form', $error);
                    return;
                }
            } else {
                // Data untuk diupdate ke database tanpa mengubah gambar
                $data = array(
                    'judul' => $judul,
                    'isi' => $isi
                );
            }

            // Panggil model untuk update data
            $this->Pengumuman_model->update_pengumuman($id, $data);

            redirect('admin/pengumuman'); // Redirect ke halaman daftar pengumuman admin
        } else {
            // Ambil data pengumuman berdasarkan ID untuk ditampilkan di form edit
            $data['pengumuman'] = $this->Pengumuman_model->get_pengumuman_by_id($id);
            $this->load->view('admin/pengumuman/edit_form', $data);
        }
    }

    public function hapus($id)
    {
        // Panggil model untuk menghapus data pengumuman
        $this->Pengumuman_model->delete_pengumuman($id);

        redirect('admin/pengumuman'); // Redirect ke halaman daftar pengumuman admin
    }
}
?>
