<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pemilih extends CI_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
    }
    public function index()
    {
        if ($this->session->userdata('status') != 'login') {
            redirect('admin/masuk');
        } else {
            $data['pemilih'] = $this->db->get('pemilih')->result();
            $this->load->view('admin/pemilih/index', $data);
        }
    }
    public function tambah()
    {
        $this->load->view('admin/pemilih/tambah');
    }
    public function simpan()
    {
        $nama = $this->input->post('nama');
        $kelamin = $this->input->post('kelamin');
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));

        $data = array(
            'nama_pemilih' => $nama,
            'jk_pemilih' => $kelamin,
            'username' => $username,
            'password' => $password
        );
        $this->db->insert('pemilih', $data);
        $this->session->set_flashdata('success', 'Berhasil Disimpan');
        redirect('admin/pemilih');
    }
    public function ubah($id)
    {
        $data['cari'] = $this->db->get_where('pemilih', array('id_pemilih' => $id))->result();
        $this->load->view('admin/pemilih/ubah', $data);
    }
    public function subah()
    {
        $nama = $this->input->post('nama');
        $kelamin = $this->input->post('kelamin');
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        $id = $this->input->post('kode');
        if ($password == "") {
            $data = array(
                'nama_pemilih' => $nama,
                'jk_pemilih' => $kelamin,
                'username' => $username
            );
        } else {
            $data = array(
                'nama_pemilih' => $nama,
                'jk_pemilih' => $kelamin,
                'username' => $username,
                'password' => $password
            );
        }

        $this->db->where('id_pemilih', $id);
        $this->db->update('pemilih', $data);
        $this->session->set_flashdata('success', 'Berhasil Disimpan');
        redirect('admin/pemilih');
    }
    public function hapus($id)
    {
        $this->db->where(array('id_pemilih' => $id));
        $this->db->delete('pemilih');
        $this->session->set_flashdata('success', 'Berhasil Dihapus');
        redirect('admin/pemilih');
    }

    public function pilih()
    {
        $pemilih = $this->session->userdata('id_pemilih');
        $cek = $this->db->get_where('pilih', array('id_pemilih' => $pemilih));
        $banyak = $cek->num_rows();
        if ($banyak >= 1) {
            $status_memilih = 'telah memilih';
        } else {
            $status_memilih = 'belum memiiih';
        }
    }

    // controllers/admin/Pemilih.php
    public function report()
    {
        if ($this->session->userdata('status') != 'login') {
            redirect('admin/masuk');
        } else {
            // Fetch the required data from the database with JOIN
            $this->db->select('pemilih.username, pemilih.nama_pemilih, kandidat.nama_kandidat, pilih.id_pemilih, pilih.tgl_rekam');
            $this->db->from('pemilih');
            $this->db->join('pilih', 'pemilih.id_pemilih = pilih.id_pemilih', 'left');
            $this->db->join('kandidat', 'pilih.id_kandidat = kandidat.id_kandidat', 'left');
            $data['pemilih'] = $this->db->get()->result();

            $this->load->view('admin/pemilih/report', $data);
        }
    }
    public function cetak()
    {
        // Fetch the required data from the database with JOIN
        $this->db->select('pemilih.username, pemilih.nama_pemilih, kandidat.nama_kandidat, pilih.id_pemilih, pilih.tgl_rekam');
        $this->db->from('pemilih');
        $this->db->join('pilih', 'pemilih.id_pemilih = pilih.id_pemilih', 'left');
        $this->db->join('kandidat', 'pilih.id_kandidat = kandidat.id_kandidat', 'left');
        $data['pemilih'] = $this->db->get()->result();

        $this->load->view('admin/pemilih/cetak', $data);
    }
}
