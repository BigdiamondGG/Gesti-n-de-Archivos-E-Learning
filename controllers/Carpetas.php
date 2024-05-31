<?php
class Carpetas extends Controller
{
    private $id_usuario;
    public function __construct()
    {
        parent::__construct();
        session_start();
        $this->id_usuario = $_SESSION['id_usuario'];
    }
    //Crear Carpeta segun usuario
    public function create()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (empty($_POST['nombreCarpeta'])) {
                $res = array('msg' => 'EL NOMBRE ES REQUERIDO', 'type' =>  'warning');
            } else {
                $nombre = strClean($_POST['nombreCarpeta']);
                $fecha = date('Y-m-d H:i:s');
                $consulta = $this->model->getCarpetaUser($nombre, $this->id_usuario);
                if (empty($consulta)) {
                    $data = $this->model->crear($nombre, $fecha, $this->id_usuario);
                    if ($data > 0) {
                        $res = array('msg' => 'CARPETA CREADA', 'type' => 'success');
                    } else {
                        $res = array('msg' => 'ERROR AL CREAR LA CARPETA', 'type' => 'error');
                    }
                }else{
                    $res = array('msg' => 'LA CARPETA YA EXISTE', 'type' =>  'warning');
                }
            }
            echo json_encode($res);
            die();
        }
    }
    //Crear Carpeta Publica
    public function createPublicFolder()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (empty($_POST['nombreCarpetaPublic'])) {
                $res = array('msg' => 'EL NOMBRE ES REQUERIDO', 'type' =>  'warning');
            } else {
                $nombre = strClean($_POST['nombreCarpetaPublic']);
                $fecha = date('Y-m-d H:i:s');
                
                //El 0 indica que no hay usuario por ende es publica la carpeta
                $consultaFP = $this->model->getCarpetaUser($nombre, 0);
                if (empty($consultaFP)) {
                    $data = $this->model->crear($nombre, $fecha,0);
                    if ($data > 0) {
                        $res = array('msg' => 'CARPETA CREADA', 'type' => 'success');
                    } else {
                        $res = array('msg' => 'ERROR AL CREAR LA CARPETA', 'type' => 'error');
                    }
                }else{
                    $res = array('msg' => 'LA CARPETA YA EXISTE', 'type' =>  'warning');
                }
            }
            echo json_encode($res);
            die();
        }
    }
    //Detalles al hacer click en carpeta
    public function details($id_carpeta)
    {
        $id_carpeta = strClean($id_carpeta);
        $data['title'] = 'Archivos';
        $data['script'] = 'detalle.js';
        $data['carpeta'] = $this->model->getCarpeta($id_carpeta);
        $this->views->getView('carpetas', 'detalle', $data);
    }
    //Detalles al hacer click en carpeta publica
    public function detailsp($id_carpeta)
    {
        $id_carpeta = strClean($id_carpeta);
        $data['title'] = 'Archivos';
        $data['script'] = 'detallepublic.js';
        $data['carpeta'] = $this->model->getCarpeta($id_carpeta);
        $this->views->getView('carpetas', 'detallepublic', $data);
    }
    //listar archivos segun carpeta
    public function listarDetalle($id_carpeta)
    {
        $data = $this->model->getArchivos($id_carpeta);
        // for ($i=0; $i < count($data); $i++) { 
           // $data[$i]['accion'] = '<a class="btn btn-outline-danger btn-sm" href="#" onclick="deleteArchivo('.$data[$i]['id'].')"><i class="fas fa-trash"></i></a>';
        // }
        for ($i = 0; $i < count($data); $i++) {
            $carpeta = $this->model->getCarpeta($data[$i]['id_carpeta']);
            $data[$i]['accion'] = '<div>
            <a class="btn btn-info text-white btn-sm" href="' . BASE_URL . 'assets/archivos/' . $carpeta['nombre'] . '/' . $data[$i]['nombre'] . '" target="_blank"  download="'. $data[$i]['nombre'].'">
            <i class="fas fa-download"></i>
            </a>
            <button class="btn btn-success btn-sm" type="button" onclick="deleteArchivo(' . $data[$i]['id'] . ')"><i class="fas fa-share-alt"></i></button>
            <button class="btn btn-danger btn-sm" type="button" onclick="deleteArchivo(' . $data[$i]['id'] . ')"><i class="fas fa-trash"></i></button>
            </div>';
        }
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        die();
    }
     //listar archivos segun carpeta Publica
     public function listarDetallePublic($id_carpeta)
     {
         $data = $this->model->getArchivos($id_carpeta);
         // for ($i=0; $i < count($data); $i++) { 
            // $data[$i]['accion'] = '<a class="btn btn-outline-danger btn-sm" href="#" onclick="deleteArchivo('.$data[$i]['id'].')"><i class="fas fa-trash"></i></a>';
         // }
         for ($i = 0; $i < count($data); $i++) {
             $carpeta = $this->model->getCarpeta($data[$i]['id_carpeta']);
             $data[$i]['accion'] = '<div>
             <a class="btn btn-info text-white btn-sm" href="' . BASE_URL . 'assets/archivos/' . $carpeta['nombre'] . '/' . $data[$i]['nombre'] . '" target="_blank"  download="'. $data[$i]['nombre'].'">
             <i class="fas fa-download"></i>
             </a>
             <button class="btn btn-danger btn-sm" type="button" onclick="deleteArchivoPublic(' . $data[$i]['id'] . ')"><i class="fas fa-trash"></i></button>
             </div>';
         }
         echo json_encode($data, JSON_UNESCAPED_UNICODE);
         die();
     }
}
