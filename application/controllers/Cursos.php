<?php
    
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Cursos extends CI_Controller {
        public function index()
        {
            $this->db->join('cursos', 'cursos.id_curso = cursos_locais.id_curso');
            $this->db->join('locais', 'locais.id_local = cursos_locais.id_local');
            $query = $this->db->get("cursos_locais");
            $data['cursos_locais'] = $query->result();
            $data['cursos'] = $this->db->get("cursos")->result();
            $data['locais'] = $this->db->get("locais")->result();
            //$data['total'] = $this->db->count_all("cursos_locais");
            echo json_encode($data);
        }
        
    }