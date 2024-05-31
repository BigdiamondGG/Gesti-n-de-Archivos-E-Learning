<?php
class Archivos extends Controller
{
    private $id_usuario;
    public function __construct()
    {
        parent::__construct();
        session_start();
        $this->id_usuario = $_SESSION['id_usuario'];
    }
//Subir Archivo
    public function upload()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $id_carpeta = strClean($_POST['id_carpeta']);
            $archivo = $_FILES['archivo'];
            if (is_numeric($id_carpeta) && !empty($archivo['name'])) {
                if (!file_exists('assets/archivos')) {
                    mkdir('assets/archivos');
                }
                $name = $archivo['name'];
                $consulta = $this->model->getCarpeta($id_carpeta);
                $carpeta = 'assets/archivos/' . $consulta['nombre'];
                $destino = $carpeta . '/' . $name;
                if (!file_exists($carpeta)) {
                    mkdir($carpeta);
                }
                $type = $archivo['type'];
                $fecha = date('Y-m-d H:i:s');
                $data = $this->model->agregarArchivo($name, $type, $fecha, $id_carpeta);
                if ($data > 0) {
                    move_uploaded_file($archivo['tmp_name'], $destino);
                    $res = array('msg' => 'ARCHIVO SUBIDO', 'type' => 'success');
                } else {
                    $res = array('msg' => 'ERROR AL SUBIR EL ARCHIVO: ' . $archivo['name'], 'type' => 'error');
                }
            } else {
                $res = array('msg' => 'ERROR DESCONOCIDO', 'type' => 'error');
            }
            echo json_encode($res);
            die();
        }
    }
    //Subir Archivo  A carpetas publicas
    public function uploadPublic()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $id_carpeta = strClean($_POST['id_carpetaPublic']);
            $archivo = $_FILES['archivoPublic'];
            if (is_numeric($id_carpeta) && !empty($archivo['name'])) {
                if (!file_exists('assets/archivos')) {
                    mkdir('assets/archivos');
                }
                $name = $archivo['name'];
                $consulta = $this->model->getCarpeta($id_carpeta);
                $carpeta = 'assets/archivos/' . $consulta['nombre'];
                $destino = $carpeta . '/' . $name;
                if (!file_exists($carpeta)) {
                    mkdir($carpeta);
                }
                $type = $archivo['type'];
                $fecha = date('Y-m-d H:i:s');
                $data = $this->model->agregarArchivo($name, $type, $fecha, $id_carpeta);
                if ($data > 0) {
                    move_uploaded_file($archivo['tmp_name'], $destino);
                    $res = array('msg' => 'ARCHIVO SUBIDO', 'type' => 'success');
                } else {
                    $res = array('msg' => 'ERROR AL SUBIR EL ARCHIVO: ' . $archivo['name'], 'type' => 'error');
                }
            } else {
                $res = array('msg' => 'ERROR DESCONOCIDO', 'type' => 'error');
            }
            echo json_encode($res);
            die();
        }
    }

    //buscar usuario
    public function buscarUsuario()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            $array = array();
            $valor = strClean($_GET['q']);
            $data = $this->model->buscarUsuario($valor, $this->id_usuario);
            foreach ($data as $row) {
                $result['id'] = $row['id'];
                $result['text'] = $row['nombre'];
                array_push($array, $result);
            }
            echo json_encode($array, JSON_UNESCAPED_UNICODE);
            die();
        }
    }
//agregar nuevo usuario archivos Compartido
    public function add_user()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (!empty($_POST['usuarios'])) {
                $id_carpeta = strClean($_POST['id_carpeta']);
                $estado = false;
                $fecha = date('Y-m-d H:i:s');
                $cantidad = count($_POST['usuarios']);
                for ($i = 0; $i < $cantidad; $i++) {
                    $archivos = $this->model->getArchivos($id_carpeta);
                    if (empty($archivos)) {
                        $res = array('msg' => 'LA CARPETA NO CONTIENE ARCHIVOS', 'type' => 'warning');
                        echo json_encode($res);
                        die();
                    } else {
                        foreach ($archivos as $archivo) {
                            $consulta = $this->model->getExisteUser($archivo['id'], $_POST['usuarios'][$i]);
                            if (empty($consulta)) {
                                $data = $this->model->addUser($fecha, $archivo['id'], $id_carpeta, $_POST['usuarios'][$i], $this->id_usuario);
                                $estado = ($data > 0) ? true : false;
                            } else {
                                $estado = true;
                            }
                        }
                    }
                }
                if ($estado && $cantidad == 1) {
                    $res = array('msg' => 'USUARIO AGREGADO', 'type' => 'success');
                } else if ($estado && $cantidad > 1) {
                    $res = array('msg' => 'USUARIOS AGREGADOS', 'type' => 'success');
                } else {
                    $res = array('msg' => 'ERROR AL AGREGAR', 'type' => 'error');
                }
            } else {
                $res = array('msg' => 'AGREGAR UN USUARIO COMO MÍNIMO', 'type' => 'warning');
            }
            echo json_encode($res);
            die();
        }
    }

    //usuarios con acceso
    public function user_access($id_carpeta)
    {
        $id_carpeta = strClean($id_carpeta);
        $data = $this->model->getUserAccess($id_carpeta);
        echo json_encode($data);
        die();
    }

    // eliminar usuario del detalle temp
    public function delete_user($id_usuario)
    {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            $id_usuario = strClean($id_usuario);
            $data = $this->model->deleteUser($id_usuario);
            if ($data == 1) {
                $res = array('msg' => 'USUARIO ELIMINADO', 'type' => 'success');
            } else {
                $res = array('msg' => 'ERROR AL ELIMINAR', 'type' => 'error');
            }
            echo json_encode($res);
            die();
        }
    }

    // eliminar archivo
    public function delete($id_archivo)
    {
        if ($_SERVER['REQUEST_METHOD'] == 'GET') {
            try {
                $id_archivo = strClean($id_archivo);
                $consulta = $this->model->getArchivo($id_archivo);
                $data = $this->model->delete($id_archivo);
                if ($data == 1) {
                    $fecha_actual = date('Y-m-d H:i:s');
                    $fecha_delete = date("Y-m-d H:i:s", strtotime($fecha_actual . '+1 month'));
                    $temp = $this->model->addTemporal($consulta['nombre'], $fecha_actual, $fecha_delete, $consulta['id_carpeta'],$consulta['tipo'], $this->id_usuario);
                    if ($temp > 0) {
                        $res = array('msg' => 'ARCHIVO ELIMINADO', 'type' => 'success');
                    } else {
                        $res = array('msg' => 'ERROR CREAR EL ARCHIVO TEMP', 'type' => 'error');
                    }
                } else {
                    $res = array('msg' => 'ERROR AL ELIMINAR', 'type' => 'error');
                }
            } catch (PDOException $th) {
                $res = array('msg' => 'ERROR DESCONOCIODO', 'type' => 'error');
            }
            echo json_encode($res);
        }
        die();
    }
     // eliminar archivo de carpetas publicas
     public function deletepublic($id_archivop)
     {
         if ($_SERVER['REQUEST_METHOD'] == 'GET') {
             try {
                 $id_archivop = strClean($id_archivop);
                 $consultap = $this->model->getArchivo($id_archivop);
                 $data = $this->model->delete($id_archivop);
                 if ($data == 1) {
                     $fecha_actual = date('Y-m-d H:i:s');
                     $fecha_delete = date("Y-m-d H:i:s", strtotime($fecha_actual . '+1 month'));
                     $temp = $this->model->addTemporal($consultap['nombre'], $fecha_actual, $fecha_delete, $consultap['id_carpeta'],$consultap['tipo'], 0);
                     if ($temp > 0) {
                         $res = array('msg' => 'ARCHIVO ELIMINADO', 'type' => 'success');
                     } else {
                         $res = array('msg' => 'ERROR CREAR EL ARCHIVO TEMP', 'type' => 'error');
                     }
                 } else {
                     $res = array('msg' => 'ERROR AL ELIMINAR', 'type' => 'error');
                 }
             } catch (PDOException $th) {
                 $res = array('msg' => 'ERROR DESCONOCIODO', 'type' => 'error');
             }
             echo json_encode($res);
         }
         die();
     }
  // Test REstaurar archivo
  public function restore($id_archivo)
  {
      if ($_SERVER['REQUEST_METHOD'] == 'GET') {
          try {
              $id_archivo = strClean($id_archivo);
              $consulta = $this->model->getArchivoR($id_archivo);
              $data = $this->model->deleteR($id_archivo);
              echo json_encode('un_nombre', $data);
              if ($data == 1) {
                  $temp = $this->model->addTemporalR($consulta['nombre'], $consulta['tipo'], $consulta['fecha_create'], $consulta['id_carpeta']);
                  if ($temp > 0) {
                      $res = array('msg' => 'ARCHIVO RESTAURADO', 'type' => 'success');
                  } else {
                      $res = array('msg' => 'ERROR AL RESTTAURAR ARCHIVO', 'type' => 'error');
                  }
              } else {
                  $res = array('msg' => 'ERROR AL RESTAURAR', 'type' => 'error');
              }
          } catch (PDOException $th) {
              $res = array('msg' => 'ERROR DESCONOCIODO', 'type' => 'error');
          }
          echo json_encode($res);
      }
      die();
  }
    //buscar archivos
    public function buscar()
    {
        $array = array();
        $valor = strClean($_GET['term']);
        $data = $this->model->buscarPorNombre($valor, $this->id_usuario);
        foreach ($data as $row) {
            $result['id'] = $row['id'];
            $result['nombre'] = $row['carpeta'] . '/' . $row['nombre'];
            $result['label'] = $row['nombre'] . ' - ' . $row['tipo'] . ' - ' . $row['fecha_create'];
            array_push($array, $result);
        }
        echo json_encode($array, JSON_UNESCAPED_UNICODE);
        die();
    }
    //buscar los archivos publicos
    public function buscarPublic()
    {
        $array = array();
        $valor = strClean($_GET['term']);
        $data = $this->model->buscarPorNombre($valor, 0);
        foreach ($data as $row) {
            $result['id'] = $row['id'];
            $result['nombre'] = $row['carpeta'] . '/' . $row['nombre'];
            $result['label'] = $row['nombre'] . ' - ' . $row['tipo'] . ' - ' . $row['fecha_create'];
            array_push($array, $result);
        }
        echo json_encode($array, JSON_UNESCAPED_UNICODE);
        die();
    }
}
