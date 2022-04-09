<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Laptop extends CI_Model {

    function datalaptop()
    {

        return $this->db->get('laptop')->result();
    }
     function simpan_data()
     {
         $merk = $this->input->post('merk');
         $harga = $this->input->post('harga');
         $stok = $this->input->post('stok');
         $foto = $this->input->post('foto');
        

         $data = array(
             'merk'=>$merk,
             'harga'=>$harga,
             'stok'=>$stok,
             'foto'=>$foto,
         );

         $this->db->insert('laptop',$data);
     }
     function hapus_laptop($id)
     {
         $this->db->delete('laptop',array('id'=>$id));
     }
     function edit_laptop($id)
     {
       return $this->db->get_where('laptop',array('id'=>$id))->result();
     }
   function simpan_edit()
   {
    $merk = $this->input->post('merk');
    $harga = $this->input->post('harga');
    $stok  = $this->input->post('stok');
    $foto  = $this->input->post('foto');
    $id = $this->input->post('id');

    $data = array(
        'merk'=>$merk,
        'harga'=>$harga,
        'stok'=>$stok,
        'foto'=>$foto
    );
      $this->db->where('id',$id);
      $this->db->update('laptop',$data);
   }
}