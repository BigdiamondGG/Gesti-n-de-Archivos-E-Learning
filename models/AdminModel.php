<?php
class AdminModel extends Query{
    public function __construct() {
        parent::__construct();
    }
    public function getDatos()
    {
        $sql = "SELECT * FROM configuracion";
        return $this->select($sql);
    }
    public function actualizar($ruc, $nombre, $telefono, $correo,
    $direccion, $impuesto, $mensaje, $id)
    {
        $sql = "UPDATE configuracion SET ruc=?, nombre=?, telefono=?, correo=?,
        direccion=?, impuesto=?, mensaje=? WHERE id=?";
        $array = array($ruc, $nombre, $telefono, $correo,
        $direccion, $impuesto, $mensaje, $id);
        return $this->save($sql, $array);
    }

    public function getCarpetas($id_usuario)
    {
        $sql = "SELECT * FROM carpetas WHERE id_usuario = $id_usuario ORDER BY id DESC LIMIT 3";
        return $this->selectAll($sql);
    }
    //obtener carpetas donde id sea publico
    public function getCarpetasPublicas($id_usuario)
    {
        $sql = "SELECT * FROM carpetas WHERE id_usuario = $id_usuario ORDER BY id DESC LIMIT 3";
        return $this->selectAll($sql);
    }
    public function getArchivos($id_usuario)
    {
        $sql = "SELECT a.*, c.nombre AS carpeta FROM archivos a INNER JOIN carpetas c ON a.id_carpeta = c.id WHERE c.id_usuario = $id_usuario ORDER BY id DESC LIMIT 5";
        return $this->selectAll($sql);
    }

    public function getEmpresa()
    {
        $sql = "SELECT * FROM configuracion";
        return $this->select($sql);
    }


    public function listarLogs()
    {
        $sql = "SELECT * FROM acceso";
        return $this->selectAll($sql);
    }

    public function limpiraDatos()
    {
        $sql = "TRUNCATE acceso";
        return $this->select($sql);
    }
    public function getTemp($fecha, $id_usuario)
    {
        $sql = "SELECT r.nombre, c.nombre AS carpeta FROM reciclaje r INNER JOIN carpetas c ON r.id_carpeta = c.id WHERE r.fecha_delete < '$fecha' AND r.id_usuario = $id_usuario";
        return $this->selectAll($sql);
    }
    //eliminar de forma permanente
    public function deleteTemp($fecha, $id_usuario)
    {
        $sql = "DELETE FROM reciclaje WHERE fecha_delete < ? AND id_usuario = ?";
        $array = array($fecha, $id_usuario);
        return $this->save($sql, $array);
    }
}
?>