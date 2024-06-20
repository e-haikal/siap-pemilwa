<?php
class Kandidat_model extends CI_Model
{
    public function get_all()
    {
        return $this->db->get('kandidat')->result();
    }

    public function get_perolehan_suara()
    {
        return $this->db->select('id_kandidat, COUNT(id_kandidat) as jumlah_suara')
            ->group_by('id_kandidat')
            ->get('pilih')
            ->result();
    }
}
?>
