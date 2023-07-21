<?php
class AllsModel extends Query{
    public function __construct() {
        parent::__construct();
    }

    public function getCarpetas($desde, $porPagina, $id_usuario)
    {
        $sql = "SELECT * FROM carpetas WHERE id_usuario = $id_usuario ORDER BY id DESC LIMIT $desde, $porPagina";
        return $this->selectAll($sql);
    }
    //obtener total de carpetas por id Usuario
    public function getTotalCarpetas($id_usuario)
    {
        $sql = "SELECT COUNT(*) AS total FROM carpetas WHERE id_usuario = $id_usuario";
        return $this->select($sql);
    }
    //obtener total de carpetas por 
    public function getTotalCarpetasPublic()
    {
        $sql = "SELECT COUNT(*) AS total FROM carpetas";
        return $this->select($sql);
    }
}
?>