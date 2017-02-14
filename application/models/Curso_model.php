<?php 
        class Curso_model extends CI_Model {

                public function __construct()
                {
                        parent::__construct();
                        // Your own constructor code
                }

                public function get_cursos()
                {
                        return $this->db->get('cursos');
                }

        }