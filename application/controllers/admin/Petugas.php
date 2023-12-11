<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Petugas extends CI_Controller {

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
            $data['petugas'] = $this->db->get('petugas')->result();
            $this->load->view('admin/petugas/index', $data);
        }
    }
    public function tambah()
    {
        $this->load->view('admin/petugas/tambah');
    }
    public function simpan()
    {
        $nama=$this->input->post('nama');
        $username=$this->input->post('username');
        $password=md5($this->input->post('password'));

        $data=array(
            'nama_petugas' => $nama,
            'username' => $username,
            'password' => $password
        );
        $this->db->insert('petugas', $data);
        $this->session->set_flashdata('success','berhasil disimpan');
        redirect('admin/petugas');
    }
    public function ubah($id)
    {
        $data['cari'] = $this->db->get_where('petugas', array('id_petugas' => $id))->result();
        $this->load->view('admin/petugas/ubah', $data);
    }
    public function subah()
    {
        $nama=$this->input->post('nama');
        $username=$this->input->post('username');
        $password=md5($this->input->post('password'));
        $id = $this->input->post('kode');
        if($password == ""){
            $data=array(
                'nama_petugas' => $nama,
                'username' => $username
            );
        } else {
            $data=array(
                'nama_petugas' => $nama,
                'username' => $username,
                'password' => $password
            );
        }
       
        $this->db->where('id_petugas', $id);
        $this->db->update('petugas', $data);
        $this->session->set_flashdata('success','Berhasil Disimpan');
        redirect('admin/petugas');
    }
    public function hapus($id)
    {
        $this->db->where(array('id_petugas' => $id));
        $this->db->delete('petugas');
        $this->session->set_flashdata('success', 'Berhasil Dihapus');
        redirect('admin/petugas');
    }
    public function report()
    {
        if ($this->session->userdata('status') != 'login') {
            redirect('admin/masuk');
        } else {
            $data['petugas'] = $this->db->get('petugas')->result();
            $this->load->view('admin/petugas/report', $data);
        }
    }
    public function cetak()
    {
        $data['petugas'] = $this->db->get('petugas')->result();
        $this->load->view('admin/petugas/cetak', $data);
    }
}
