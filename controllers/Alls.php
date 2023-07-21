<?php
class Alls extends Controller
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

    public function page($page)
    {
        $data['title'] = 'Carpetas';
        $data['script'] = 'index.js';
        $data['active'] = 'alls';

        $pagina = (empty($page)) ? 1 : $page ;
        $porPagina = 6;
        $desde = ($pagina - 1) * $porPagina;

        $data['carpetas'] = $this->model->getCarpetas($desde, $porPagina, $this->id_usuario);

        $data['pagina'] = $pagina;
        $total = $this->model->getTotalCarpetas($this->id_usuario);
        $data['total'] = ceil($total['total'] / $porPagina);

        $this->views->getView('carpetas', 'index', $data);
    }
    public function pagePublic($page)
    {
        $data['title'] = 'Carpetas';
        $data['script'] = 'index.js';
        $data['active'] = 'alls';

        $pagina = (empty($page)) ? 1 : $page ;
        $porPagina = 6;
        $desde = ($pagina - 1) * $porPagina;

        $data['carpetas'] = $this->model->getCarpetas($desde, $porPagina, 0);

        $data['pagina'] = $pagina;
        $total = $this->model->getTotalCarpetas(0);
        $data['total'] = ceil($total['total'] / $porPagina);

        $this->views->getView('carpetas', 'indexPublic', $data);
    }
}
