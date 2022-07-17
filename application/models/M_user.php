<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_user extends CI_Model
{
    private $_table = 'tb_user';

    public function getAll()
    {
        return $this->db->get($this->_table)->result_array();
    }

    public function inputData($data)
    {
        return $this->db->insert($this->_table, $data);
    }
}
