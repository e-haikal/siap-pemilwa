<?php
class Pilih_model extends CI_Model
{
    public function count_all()
    {
        return $this->db->count_all('pilih');
    }
}
?>
