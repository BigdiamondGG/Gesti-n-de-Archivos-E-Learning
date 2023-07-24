<?php
class RecicleModel extends Query{
    public function __construct() {
        parent::__construct();
    }
    public function getRecicle($id_usuario)
    {
        $sql = "SELECT * FROM reciclaje WHERE id_usuario = $id_usuario";
        return $this->selectAll($sql);
    }
       // eliminar archivo Reciclaje 
       public function deleteRecicle($id_usuario)
       {
           $sql = "DELETE FROM reciclaje WHERE id = ?";
           $datos = array($id_usuario);
           return $this->save($sql, $datos);
       }
       public function agregarArchivoRecicle($nombre, $type, $fecha, $id_carpeta)
       {
           $sql = "INSERT INTO archivos (nombre, tipo, fecha_create, id_carpeta) VALUES (?,?,?,?)";
           $datos = array($nombre, $type, $fecha, $id_carpeta);
           return $this->insertar($sql, $datos);
       }
}

?>