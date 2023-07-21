<?php
class Shared extends Controller
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
        $data['title'] = 'Compartidos';
        $data['script'] = 'email.js';
        $data['message'] = $this->model->getNuevoCompartidos($this->id_usuario);
        $this->views->getView('carpetas', 'compartidos', $data);
    }

    function listar()
    {
        $data = $this->model->getArchivos($this->id_usuario);
        for ($i = 0; $i < count($data); $i++) {
            $carpeta = $this->model->getCarpeta($data[$i]['id_carpeta']);
            if ($data[$i]['estado'] == 1) {
                $data[$i]['accion'] = '';
                $data[$i]['status'] = '<a href="#" onclick=leerArchivo('.$data[$i]['id'].')><span class="badge bg-info">No leido</span></a>';
            } else {
                $data[$i]['accion'] = '<a class="btn btn-outline-danger btn-sm" href="' . BASE_URL . 'assets/archivos/' . $carpeta['nombre'] . '/' . $data[$i]['nombre'] . '" target="_blank">
                <i class="fas fa-download"></i>
                </a>';
                $data[$i]['status'] = '<span class="badge bg-success">Leido</span>';
            }
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        die();
    }

    public function leerArchivo($id)
    {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            $data = $this->model->leerArchivo($id);
            if ($data == 1) {
                $message = $this->model->getNuevoCompartidos($this->id_usuario);
                $res = array('msg' => 'ok', 'type' => 'success', 'message' => $message['total']);
            } else {
                $res = array('msg' => 'error', 'type' => 'error');
            }
            echo json_encode($res);
        }
        die();
    }
}
