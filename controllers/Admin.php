<?php
require 'vendor/autoload.php';

use Dompdf\Dompdf;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Style\Color;
use PhpOffice\PhpSpreadsheet\Style\Fill;

class Admin extends Controller
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
        $data['title'] = 'Panel Administrativo';
        $data['script'] = 'index.js';
        $data['active'] = 'recients';
        
        $data['carpetas'] = $this->model->getCarpetas($this->id_usuario);
        $data['archivos'] = $this->model->getArchivos($this->id_usuario);

        $fecha = date('Y-m-d H:i:s');
        $consulta = $this->model->getTemp($fecha, $this->id_usuario);
        
        if (!empty($consulta)) {
            $this->model->deleteTemp($fecha, $this->id_usuario);            
            foreach ($consulta as $consult) {
                $ruta = 'assets/archivos/' . $consult['carpeta'] . '/' . $consult['nombre'];
                if (file_exists($ruta)) {
                    unlink($ruta);
                }
            }            
        }
        
        $this->views->getView('admin', 'home', $data);
    }
    //datos de la empres
    public function datos()
    {
        if ($_SESSION['rol'] == 2) {
            header('Location: ' . BASE_URL . 'admin/permisos');
            exit;
        }
        $data['title'] = 'Datos de la Empresa';
        $data['script'] = 'admin.js';
        $data['empresa'] = $this->model->getDatos();
        $this->views->getView('admin', 'index', $data);
    }
    //modificar datos
    public function modificar()
    {
        if ($_SESSION['rol'] == 2) {
            header('Location: ' . BASE_URL . 'admin/permisos');
            exit;
        }
        if (isset($_POST)) {
            $ruc = strClean($_POST['ruc']);
            $nombre = strClean($_POST['nombre']);
            $telefono = strClean($_POST['telefono']);
            $correo = strClean($_POST['correo']);
            $direccion = strClean($_POST['direccion']);
            $impuesto = strClean($_POST['impuesto']);
            $mensaje = strClean($_POST['mensaje']);
            $logo = $_FILES['foto'];
            $id = strClean($_POST['id']);
            if (empty($ruc)) {
                $res = array('msg' => 'EL RUC ES REQUERIDO', 'type' => 'warning');
            } else if (empty($nombre)) {
                $res = array('msg' => 'EL NOMBRE ES REQUERIDO', 'type' => 'warning');
            } else if (empty($telefono)) {
                $res = array('msg' => 'EL TELEFONO ES REQUERIDO', 'type' => 'warning');
            } else if (empty($correo)) {
                $res = array('msg' => 'EL CORREO ES REQUERIDO', 'type' => 'warning');
            } else if (empty($direccion)) {
                $res = array('msg' => 'LA DIRECCION ES REQUERIDO', 'type' => 'warning');
            } else {
                $data = $this->model->actualizar(
                    $ruc,
                    $nombre,
                    $telefono,
                    $correo,
                    $direccion,
                    $impuesto,
                    $mensaje,
                    $id
                );
                if ($data == 1) {
                    if (!empty($logo['name'])) {
                        $directorio = 'assets/images/logo.png';
                        move_uploaded_file($logo['tmp_name'], $directorio);
                    }
                    $res = array('msg' => 'DATOS MODIFICADO', 'type' => 'success');
                } else {
                    $res = array('msg' => 'ERROR AL ACTUALIZAR', 'type' => 'error');
                }
            }
        } else {
            $res = array('msg' => 'ERROR DESCONOCIDO', 'type' => 'error');
        }
        echo json_encode($res, JSON_UNESCAPED_UNICODE);
        die();
    }

    //logs de acceso
    public function logs()
    {
        if ($_SESSION['rol'] == 2) {
            header('Location: ' . BASE_URL . 'admin/permisos');
            exit;
        }
        $data['title'] = 'Logs de Acceso';
        $data['script'] = 'logs.js';
        $this->views->getView('admin', 'logs', $data);
    }

    public function listarLogs()
    {
        if ($_SESSION['rol'] == 2) {
            header('Location: ' . BASE_URL . 'admin/permisos');
            exit;
        }
        $data = $this->model->listarLogs();
        echo json_encode($data, JSON_UNESCAPED_UNICODE);
        die();
    }

    public function limpiraDatos()
    {
        if ($_SESSION['rol'] == 2) {
            header('Location: ' . BASE_URL . 'admin/permisos');
            exit;
        }
        $data = $this->model->limpiraDatos();
        if (empty($data)) {
            $res = array('msg' => 'DATOS LIMPIADO POR COMPLETO', 'type' => 'success');
        }else{
            $res = array('msg' => 'ERROR AL ELIMINAR DATOS', 'type' => 'error');
        }
        echo json_encode($res);
        die();
        
    }

    public function permisos()
    {
        $data['title'] = 'Permisos';
        $this->views->getView('admin', 'permisos', $data);
    }
}
