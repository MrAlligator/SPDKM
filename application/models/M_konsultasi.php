<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_konsultasi extends CI_Model
{
    private $_table = 'tb_konsultasi';

    public function getAll()
    {
        return $this->db->get($this->_table)->result_array();
    }

    public function inputData($data)
    {
        return $this->db->insert($this->_table, $data);
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

    public function getNewest()
    {
        return $this->db->order_by('tanggal_konsultasi', 'DESC')->limit(1)->get($this->_table)->result_array();
    }
}
