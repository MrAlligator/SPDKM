<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_pilihanuser extends CI_Model
{
    private $_table = 'tb_pilihan_user';

    public function getAll()
    {
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

    public function inputData($data)
    {
        return $this->db->insert($this->_table, $data);
    }
}
