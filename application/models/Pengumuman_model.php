<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Pengumuman_model extends CI_Model
{
    public function get_all_pengumuman()
    {
        return $this->db->order_by('tanggal_posting', 'DESC')
                        ->get('pengumuman')
                        ->result();
    }

    public function get_pengumuman_by_id($id)
    {
        return $this->db->where('id', $id)
                        ->get('pengumuman')
                        ->row();
    }

    public function insert_pengumuman($data)
    {
        return $this->db->insert('pengumuman', $data);
    }

    public function update_pengumuman($id, $data)
    {
        return $this->db->where('id', $id)
                        ->update('pengumuman', $data);
    }

    public function delete_pengumuman($id)
    {
        return $this->db->where('id', $id)
                        ->delete('pengumuman');
    }
}
?>
