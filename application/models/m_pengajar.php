<?php

class M_pengajar extends CI_Model
{
    public function tampil_data()
    {
        return $this->db->get('pengajar');
    }

    public function detail_pengajar($nip = null)
    {
        $query = $this->db->get_where('pengajar', array('nip' => $nip))->row();
        return $query;
    }

    public function delete_pengajar($where, $table)
    {
        $this->db->where($where);
        $this->db->delete($table);
    }

    public function update_pengajar($where, $table)
    {
        return $this->db->get_where($table, $where);
    }

    public function update_data($where, $data, $table)
    {
        $this->db->where($where);
        $this->db->update($table, $data);
    }
}