<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Utama extends CI_Controller
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
            $data['petugas'] = $this->db->get('petugas')->num_rows();
            $data['kandidat'] = $this->db->get('kandidat')->num_rows();
            $data['pemilih'] = $this->db->get('pemilih')->num_rows();
            $data['pilih'] = $this->db->get('pilih')->num_rows();
            $data['kndt'] = $this->db->get('kandidat')->result();
            $this->load->view('admin/index', $data);
        }
    }

    public function get_suara_masuk()
    {
        $suara_masuk = $this->db->count_all_results('pilih'); // Menghitung jumlah suara masuk

        echo json_encode(['suara_masuk' => $suara_masuk]);
    }

    public function get_jumlah_pemilih()
    {
        // Logika untuk mengambil jumlah pemilih
        $jumlah_pemilih = $this->db->count_all_results('pemilih');
        echo json_encode(['jumlah_pemilih' => $jumlah_pemilih]);
    }

    public function get_jumlah_kandidat()
    {
        // Logika untuk mengambil jumlah kandidat
        $jumlah_kandidat = $this->db->count_all_results('kandidat');
        echo json_encode(['jumlah_kandidat' => $jumlah_kandidat]);
    }

    public function get_jumlah_petugas()
    {
        // Logika untuk mengambil jumlah petugas
        $jumlah_petugas = $this->db->count_all_results('petugas');
        echo json_encode(['jumlah_petugas' => $jumlah_petugas]);
    }

    public function get_perolehan_suara()
    {
        $result = array();

        // Logika untuk mengambil data perolehan suara
        $result['total_suara'] = $this->db->count_all_results('pilih');
        
        // Ambil data perolehan suara kandidat
        $kandidat_data = $this->db->select('id_kandidat, COUNT(id_kandidat) as jumlah_suara')
            ->group_by('id_kandidat')
            ->get('pilih')
            ->result();

        foreach ($kandidat_data as $data) {
            $result['perolehan_suara'][$data->id_kandidat] = $data->jumlah_suara;
        }

        echo json_encode($result);
    }
}
