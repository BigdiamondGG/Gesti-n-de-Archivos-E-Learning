<?php include_once 'views/templates/header.php'; ?>

<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt text-info"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Archivos Públicos</li>
            </ol>
        </nav>
    </div>
</div>
<!--end breadcrumb-->
<div class="row">
    <div class="col-12 col-lg-3">
        <?php include_once 'views/components/unidadPublic.php';
        include_once 'views/components/almacenamiento.php'; ?>
    </div>
    <div class="col-12 col-lg-9">
        <div class="card">
            <div class="card-body">
                <?php include_once 'views/components/search.php'; ?>
                <hr>
                <!--end row-->
                <h5>Carpetas Públicas</h5>
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
                                        </div>
                                        <div class="user-plus" onclick="accionCarpetaPublic(<?php echo $carpeta['id']; ?>)">+</div>
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
                            $url = BASE_URL . 'alls/pagePublic/';
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