<?php
class ReciclePublic extends Controller
{
    private $id_usuario;
    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['id_usuario'])) {
            header('Location: ' . BASE_URL);
            exit;
        }
        $this->id_usuario = $_SESSION['id_usuario'];
    }
    public function index()
    {
        $data['title'] = 'Archivos eliminados';
        $data['script'] = 'index.js';
        $data['active'] = 'deletePublic';
        $this->views->getView('archivos', 'recicle-public', $data);
    }

    public function listar()
    {

        $data = $this->model->getRecicleR();
        for ($i=0; $i < count($data); $i++) { 
            $data[$i]['accion'] = '<div>
            <button class="btn btn-warning text-white" type="button" onclick="restoreArchivo(' . $data[$i]['id'] . ')"><i class="fas fa-trash-restore"></i> Restaurar</button>
            </div>';       
             }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        die();
    }
      
}
