<?php include_once 'views/templates/header.php'; ?>

<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt text-info"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">File Manager</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->
<div class="row">
    <div class="col-12 col-lg-3">
        <?php include_once 'views/components/unidad.php';
        include_once 'views/components/almacenamiento.php'; ?>
    </div>
    <div class="col-12 col-lg-9">
        <div class="card">
            <div class="card-body">
                <?php include_once 'views/components/search.php'; ?>
                <hr>
                <!--end row-->
                <h5>Carpetas</h5>
                <div class="row mt-3">
                    <?php require_once 'models/ArchivosModel.php';
                    $archivos = new ArchivosModel();
                    foreach ($data['carpetas'] as $carpeta) {
                        $archivo = $archivos->getArchivosCarpeta($carpeta['id']); ?>
                        <div class="col-12 col-lg-4">
                            <div class="card shadow-none border radius-15">
                                <div class="card-body">
                                    <div class="d-flex align-items-center">
                                        <div class="font-30 text-primary"><i class='bx bxs-folder text-info'></i>
                                        </div>
                                        <div class="user-groups ms-auto">
                                            <?php $usuarios = $archivos->getUserAccess($carpeta['id']);
                                            for ($i = 0; $i < count(($usuarios)); $i++) {
                                                if ($i > 3) {
                                                    echo '<span class="badge bg-info">Más...</span>';
                                                } else {
                                                    $perfil = ($usuarios[$i]['perfil'] == null) ? 'default.png' : $usuarios[$i]['perfil']; ?>
                                                    <img src="<?php echo BASE_URL . 'assets/images/avatars/' . $perfil; ?>" width="35" height="35" class="rounded-circle" alt="<?php echo $usuarios[$i]['nombre']; ?>" />
                                            <?php }
                                            } ?>
                                        </div>
                                        <div class="user-plus" onclick="accionCarpeta(<?php echo $carpeta['id']; ?>)">+</div>
                                    </div>
                                    <h6 class="mb-0 text-info"><a class="text-info" href="<?php echo BASE_URL . 'carpetas/details/' . $carpeta['id']; ?>"><?php echo $carpeta['nombre']; ?></a></h6>
                                    <small><?php echo $archivo['total']; ?> <?php echo ($archivo['total'] > 1) ? 'archivos' : 'archivo'; ?></small>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                    <nav aria-label="Page navigation">
                        <ul class="pagination float-end">
                            <?php
                            $anterior = $data['pagina'] - 1;
                            $siguiente = $data['pagina'] + 1;
                            $url = BASE_URL . 'alls/page/';
                            if ($data['pagina'] > 1) {
                                echo '<li class="page-item">
                                    <a class="page-link active" href="' . $url . $anterior . '"
                                    >Anterior</a>
                                </li>';
                            }
                            if ($data['total'] >= $siguiente) {
                                echo '<li class="page-item">
                                    <a class="page-link active"
                                        href="' . $url . $siguiente . '">Siguiente</a>
                                </li>';
                            }
                            ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end row-->

<?php include_once 'views/components/modal.php'; ?>

<?php include_once 'views/templates/footer.php'; ?>