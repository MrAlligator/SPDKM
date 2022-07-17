<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_user');
    }

    public function index()
    {
        $data['title'] = "Login | SPDKM";

        $this->form_validation->set_rules('email', 'Email', 'required|trim', [
            'required' => 'Email Tidak Boleh Kosong!'
        ]);
        $this->form_validation->set_rules('password', 'Password', 'required|trim', [
            'required' => 'Password Tidak Boleh Kosong!'
        ]);

        if (isset($_SESSION['email'])) {
            redirect('home');
        } else {
            if ($this->form_validation->run() == FALSE) {
                $this->load->view('frontend/auth/login', $data);
            } else {
                $this->_login();
            }
        }
    }

    private function _login()
    {
        //Load
        $email = $this->input->post('email');
        $password = $this->input->post('password');
        $user = $this->db->get_where('tb_user', ['email' => $email])->row_array();

        //Execution
        //Cek User
        if ($user) {
            //Cek Password
            if (password_verify($password, $user['password'])) {
                //data yang akan dimasukkan session
                $data = [
                    'id_user' => $user['id_user'],
                    'nama' => $user['nama'],
                    'email' => $user['email'],
                    'level' => $user['level']
                ];
                $this->session->set_userdata($data); //menyimpan data ke dalam session
                redirect('home');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Login Gagal, Silahkan Coba Lagi</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Login Gagal, Silahkan Coba Lagi</div>');
            redirect('auth');
        }
    }

    public function register()
    {
        $data['title'] = "Registrasi Baru | SPDKM";

        $this->form_validation->set_rules('nama', 'Nama', 'required|trim', [
            'required' => 'Harap isikan Nama anda'
        ]);
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[tb_user.email]', [
            'is_unique' => 'Email Telah Terdaftar',
            'required' => 'Harap isikan Email anda',
            'valid_email' => 'Harap Isikan Email yang Valid'
        ]);
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[8]|matches[konfpass]', [
            'matches' => 'Password tidak Sama!',
            'min_length' => 'Password tidak boleh kurang dari 8 karakter!',
            'required' => 'Harap isikan Password anda'
        ]);
        $this->form_validation->set_rules('konfpass', 'konfpass', 'required|trim|matches[password]', [
            'required' => 'Harap isikan Konfirmasi Password anda'
        ]);

        if (isset($_SESSION['email'])) {
            redirect('home');
        } else {
            if ($this->form_validation->run() == FALSE) {
                $this->load->view('frontend/auth/register', $data);
            } else {
                $data = [
                    'nama' => htmlspecialchars($this->input->post('nama', true)),
                    'email' => htmlspecialchars($this->input->post('email', true)),
                    'image' => 'default.jpg',
                    'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                    'view_password' => $this->input->post('password'),
                    'level' => 'user'
                ];
                $this->m_user->inputData($data);
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Berhasil Mendaftarkan Akun</div>');
                redirect('auth');
            }
        }
    }

    public function logout()
    {
        //menghapus session
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('id_user');
        $this->session->unset_userdata('nama');
        $this->session->unset_userdata('level');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Anda Sudah Logout</div>');
        redirect('auth');
    }
}
