<?php
class CarpetasModel extends Query{
    public function __construct() {
        parent::__construct();
    }
    public function crear($nombre, $fecha, $id_usuario)
    {
        $sql = "INSERT INTO carpetas (nombre, fecha_create, id_usuario) VALUES (?,?,?)";
        $array = array($nombre, $fecha, $id_usuario);
        return $this->insertar($sql, $array);
    }
//Obtener carpetas segun usuario
    public function getCarpetaUser($nombre, $id_usuario)
    {
        $sql = "SELECT * FROM carpetas WHERE nombre = '$nombre' AND id_usuario = $id_usuario";
        return $this->select($sql);
    }

    public function getCarpeta($id_carpeta)
    {
        $sql = "SELECT * FROM carpetas WHERE id = $id_carpeta";
        return $this->select($sql);
    }

    public function getArchivos($id_carpeta)
    {
        $sql = "SELECT a.*, c.nombre AS carpeta FROM archivos a INNER JOIN carpetas c ON a.id_carpeta = c.id WHERE a.id_carpeta = $id_carpeta";
        return $this->selectAll($sql);
    }
}
?>