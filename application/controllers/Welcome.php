<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

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
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		$this->load->model('Curso_model', 'cursos', TRUE);
		$qry = $this->cursos->get_cursos();
		$table = $this->table->generate($qry);
		
		$tmpl = array ( 'table_open'  => '<table id="tabela" class="table table-striped table-bordered table-hover">' );
		$this->table->set_template($tmpl);
		$this->table->set_empty("&nbsp;"); 
		$this->table->set_heading('Nome', 'Descrição');
		$table_row = array();
		
		foreach($qry->result() as $curso)
		{
			$table_row = NULL;
			$table_row[] = $curso->nome_curso;
			$table_row[] = $curso->descricao;
			$this->table->add_row($table_row);
		}

		$table = $this->table->generate();

		$data['data_table'] = $table;

		$this->load->view('welcome_message', $data);
	}
}
