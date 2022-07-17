<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('m_gejala');
		$this->load->model('m_kerusakan');
		$this->load->model('m_pilihanuser');
		$this->load->model('m_hipotesa');
	}

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/userguide3/general/urls.html
	 */
	public function index()
	{
		if (!isset($_SESSION['email'])) {
			redirect('auth');
		}
		$data['is_active'] = 'dsh';
		$data['title'] = 'Dashboard';
		$data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();

		$this->load->view('frontend/_partials/head', $data);
		$this->load->view('frontend/_partials/sidebar', $data);
		$this->load->view('frontend/_partials/topbar', $data);
		$this->load->view('frontend/dashboard/index', $data);
		$this->load->view('frontend/_partials/foot', $data);
	}

	public function konsultasi()
	{
		if (!isset($_SESSION['email'])) {
			redirect('auth');
		}
		$data['is_active'] = 'knsl';
		$data['title'] = 'Konsultasi';
		$data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
		$data['cardHeader'] = 'Pilih Gejala yang dialami Mesin Cuci';
		$data['gejala'] = $this->m_gejala->option();
		$data['countK'] = $this->m_kerusakan->count();
		$data['kerusakan'] = $this->m_kerusakan->getAll();

		$this->form_validation->set_rules('pilihan[]', 'Pilihan', 'required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('frontend/_partials/head', $data);
			$this->load->view('frontend/_partials/sidebar', $data);
			$this->load->view('frontend/_partials/topbar', $data);
			$this->load->view('frontend/konsultasi/index', $data);
			$this->load->view('frontend/_partials/foot', $data);
		} else {
			$this->db->truncate('tmp_hitung');
			$this->db->truncate('tb_pilihan_user');
			$pilihanuser = $this->input->post('pilihan');
			foreach ($pilihanuser as $object) {
				$this->m_pilihanuser->inputData(array(
					'id_gejala' => $object
				));
			}
			$jumpil = $this->m_pilihanuser->count();
			$jumlah = $this->m_kerusakan->count();
			$krk = $_POST['kerusakan'];
			foreach ($pilihanuser as $object) {
				$pilihan = $object;
			}
			for ($x = 1; $x <= $jumlah; $x++) {
				for ($i = 1; $i <= $jumpil; $i++) {
					$numb = $krk[$x];
					$nomor = $pilihan[$i];
					$gjid = array(
						'id_kerusakan_hipotesa' => $numb,
						'id_gejala_hipotesa' => $pilihan[$i]
					);
					var_dump($nomor);
					die;
					$cek = $this->m_hipotesa->getByGejala($gjid);
					$data = [
						'id_kerusakan_hitung' => $numb,
						'id_gejala_hitung' => $cek['id_gejala_hipotesa'],
						'nilai_hitung' => $cek['nilai_hipotesa']
					];
					$this->db->insert('tmp_hitung', $data);
				}
			}
		}
	}
}
