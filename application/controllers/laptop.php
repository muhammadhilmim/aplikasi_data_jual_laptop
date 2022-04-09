<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Laptop extends CI_Controller {
    public function __construct(){
        parent:: __construct();

        $this->load->model('M_laptop');
    }

	public function index()
	{
        $data['laptop'] = $this->M_laptop->datalaptop();
		$this->load->view('template/header');
		$this->load->view('laptop/data_laptop',$data);
		$this->load->view('template/footer');
	}
    
    function tambah_data()
    {
        $this->load->view('template/header');
		$this->load->view('laptop/tambah_laptop');
		$this->load->view('template/footer');
    }
    function simpan_laptop()   
    {
        $this->M_laptop->simpan_data();
        redirect('laptop');
    }
    function upload_foto()
    {
        $config['upload_path']          = './foto/';
        $config['allowed_types']        = 'jpg|jpeg|png|webp';
        $config['max_size']             = 10000;
        $config['max_width']            = 10000;
        $config['max_height']           = 10000;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload('foto'))
        {
            echo "Gagal Tambah";
        }
        else
        {
           $foto = $this->upload->data();
           $file_name = $foto['file_name'];
           $id = $this->input->post('id', TRUE);
           $merk = $this->input->post('merk', TRUE);
           $harga = $this->input->post('harga', TRUE);
           $stok = $this->input->post('stok', TRUE);
           $foto = $this->input->post('foto', TRUE);

           $data = array(
               'merk' => $merk,
               'harga' => $harga,
               'stok' => $stok,
               'foto' => $file_name,
           );
           
           $this->db->insert('laptop', $data);
           $this->session->set_flashdata('data', '<div class="alert alert-info" role="alert">
           data berhasil ditambahkan!
         </div>');

             redirect('laptop');
        }
    }
    function hapus_laptop($id)
    {
        $this->M_laptop->hapus_laptop($id);
        $this->session->set_flashdata('isi', '<div class="alert alert-danger" role="alert">
        data berhasil dihapus!!!
      </div>');
        redirect("laptop");
         
    }
    function edit_laptop($id)
    {
        $this->load->view('template/header');
        $data['editlaptop'] = $this->M_laptop->edit_laptop($id);
		$this->load->view('laptop/edit_laptop',$data);
		$this->load->view('template/footer');
    }
    function simpan_edit_laptop()
    {
       $this->M_laptop->simpan_edit();
    //    $this->db->insert('laptop', $data);
           $this->session->set_flashdata('file','<div class="alert alert-info" role="alert">
           data berhasil diubah!
         </div>');
       redirect('laptop');
    }
}
    
