<?php
class ArchivosModel extends Query{
    public function __construct() {
        parent::__construct();
    }

    public function getArchivosCarpeta($id_carpeta)
    {
        $sql = "SELECT COUNT(id) AS total FROM archivos WHERE id_carpeta = $id_carpeta";
        return $this->select($sql);
    }

    public function getArchivosUsuarios($id_archivo)
    {
        $sql = "SELECT COUNT(id) AS total FROM detalle_archivos WHERE id_archivo = $id_archivo";
        return $this->select($sql);
    }
    public function getCarpeta($id_carpeta)
    {
        $sql = "SELECT * FROM carpetas WHERE id = $id_carpeta";
        return $this->select($sql);
    }

    public function agregarArchivo($carpeta, $type, $fecha, $id_carpeta)
    {
        $sql = "INSERT INTO archivos (nombre, tipo, fecha_create, id_carpeta) VALUES (?,?,?,?)";
        $datos = array($carpeta, $type, $fecha, $id_carpeta);
        return $this->insertar($sql, $datos);
    }

    public function buscarUsuario($valor, $id_usuario)
    {
        $sql = "SELECT * FROM usuarios WHERE nombre LIKE '%".$valor."%' AND id != $id_usuario LIMIT 10";
        return $this->selectAll($sql);
    }
    //obtener todos los archivos
    public function getArchivo($id_archivo)
    {
        $sql = "SELECT * FROM archivos WHERE id = $id_archivo";
        return $this->select($sql);
    }
    //obtener todos los test recicle
    public function getArchivoR($id_archivo)
    {
        $sql = "SELECT * FROM reciclaje WHERE id = $id_archivo";
        return $this->select($sql);
    }
    //############# archivos por carpeta
    public function getArchivos($id_carpeta)
    {
        $sql = "SELECT * FROM archivos WHERE id_carpeta = $id_carpeta";
        return $this->selectAll($sql);
    }
    //############# agregar usuarios   
    public function addUser($fecha, $id_archivo, $id_carpeta, $id_usuario, $shared)
    {
        $sql = "INSERT INTO detalle_archivos (fecha_add, id_archivo, id_carpeta, id_usuario, shared) VALUES (?,?,?,?,?)";
        $datos = array($fecha, $id_archivo, $id_carpeta, $id_usuario, $shared);
        return $this->insertar($sql, $datos);
    }

    //############# comprobar si existe usuario con acceso a archivo
    public function getExisteUser($id_archivo, $id_usuario)
    {
        $sql = "SELECT * FROM detalle_archivos WHERE id_archivo = $id_archivo AND id_usuario = $id_usuario";
        return $this->select($sql);
    }

    //############# ver usuario con permiso a los directorios
    public function getUserAccess($id_carpeta)
    {
        $sql = "SELECT u.id, u.nombre, u.correo, u.perfil FROM detalle_archivos d INNER JOIN usuarios u ON d.id_usuario = u.id  WHERE d.id_carpeta = $id_carpeta GROUP BY d.id_usuario LIMIT 5";
        return $this->selectAll($sql);
    }
    

    //############# eliminar usuario   
    public function deleteUser($id_usuario)
    {
        $sql = "DELETE FROM detalle_archivos WHERE id_usuario = ?";
        $datos = array($id_usuario);
        return $this->save($sql, $datos);
    }

    //############# eliminar archivo   
    public function delete($id_usuario)
    {
        $sql = "DELETE FROM archivos WHERE id = ?";
        $datos = array($id_usuario);
        return $this->save($sql, $datos);
    }
    //############# eliminar archivo   
    public function deleteR($id_usuario)
    {
        $sql = "DELETE FROM reciclaje WHERE id = ?";
        $datos = array($id_usuario);
        return $this->save($sql, $datos);
    }
    //############# eliminar archivo Reciclaje 
    public function deleteReciclaje($id_usuario)
    {
        $sql = "DELETE FROM reciclaje WHERE id = ?";
        $datos = array($id_usuario);
        return $this->save($sql, $datos);
    }
    

    //############# crear archivo temp   
    public function addTemporal($nombre, $fecha_create, $fecha_delete, $id_carpeta,$tipo, $id_usuario)
    {
        $sql = "INSERT INTO reciclaje (nombre, fecha_create, fecha_delete, id_carpeta, tipo, id_usuario) VALUES (?,?,?,?,?,?)";
        $datos = array($nombre, $fecha_create, $fecha_delete, $id_carpeta,$tipo, $id_usuario);
        return $this->insertar($sql, $datos);
    }
//############# crear archivo temp   
public function addTemporalR($nombre, $tipo, $fecha_create, $id_carpeta)
{
    $sql = "INSERT INTO archivos (nombre, tipo, fecha_create, id_carpeta) VALUES (?,?,?,?)";
    $datos = array($nombre, $tipo, $fecha_create, $id_carpeta);
    return $this->insertar($sql, $datos);
}
    public function buscarPorNombre($valor, $id_usuario)
    {
        $sql = "SELECT a.id, a.nombre, a.tipo, a.fecha_create, c.nombre AS carpeta FROM archivos a INNER JOIN carpetas c ON a.id_carpeta = c.id WHERE a.nombre LIKE '%".$valor."%' AND c.id_usuario = $id_usuario LIMIT 10";
        return $this->selectAll($sql);
    }
}
?>