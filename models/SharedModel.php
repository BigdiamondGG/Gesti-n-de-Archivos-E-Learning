<?php
class SharedModel extends Query{
    public function __construct() {
        parent::__construct();
    }
    public function getArchivos($id_usuario)
    {
        $sql = "SELECT d.id, d.fecha_add, d.id_carpeta, d.estado, a.nombre, u.nombre AS usuario, u.correo FROM detalle_archivos d INNER JOIN archivos a ON d.id_archivo = a.id INNER JOIN usuarios u ON d.shared = u.id WHERE d.id_usuario = $id_usuario";
        return $this->selectAll($sql);
    }
    public function getCarpeta($id_carpeta)
    {
        $sql = "SELECT nombre FROM carpetas WHERE id = $id_carpeta";
        return $this->select($sql);
    }

    public function leerArchivo($id)
    {
        $sql = "UPDATE detalle_archivos SET estado = ? WHERE id = ?";
        return $this->save($sql, [0, $id]);
    }

    //cantidad de archivos compartidos
    public function getNuevoCompartidos($id_usuario)
    {
        $sql = "SELECT COUNT(id) AS total FROM detalle_archivos WHERE estado = 1 AND id_usuario = $id_usuario";
        return $this->select($sql);
    }
}
?>