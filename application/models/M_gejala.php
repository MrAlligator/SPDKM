<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_gejala extends CI_Model
{
    private $_table = 'tb_gejala';

    public function getAll()
    {
        return $this->db->get($this->_table)->result_array();
    }

    public function option()
    {
        $this->db->select(
            'a.id_gejala, a.kd_gejala, a.gejala, b.id_hipotesa,
            b.id_kerusakan_hipotesa, b.id_gejala_hipotesa, b.kode_hipotesa, b.nilai_hipotesa'
        );
        $this->db->from('tb_gejala a');
        $this->db->join('tb_hipotesa b', 'a.id_gejala = b.id_gejala_hipotesa');
        $this->db->group_by('a.id_gejala');
        return $this->db->get($this->_table)->result_array();
    }

    public function count()
    {
        $query = $this->db->get($this->_table);
        if ($query->num_rows() > 0) {
            return $query->num_rows();
        } else {
            return 0;
        }
    }
}
