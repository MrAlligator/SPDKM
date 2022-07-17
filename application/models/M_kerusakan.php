<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_kerusakan extends CI_Model
{
    private $_table = 'tb_kerusakan';

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
}
