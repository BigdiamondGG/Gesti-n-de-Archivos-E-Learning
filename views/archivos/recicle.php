<?php include_once 'views/templates/header.php'; ?>

<!--breadcrumb-->
<div class="page-breadcrumb d-none d-sm-flex align-items-center mb-3">
    <div class="ps-3">
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb mb-0 p-0">
                <li class="breadcrumb-item"><a href="javascript:;"><i class="bx bx-home-alt text-info"></i></a>
                </li>
                <li class="breadcrumb-item active" aria-current="page">Archivos E-Learning</li>
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
                <!--end row-->
                <div class="row mt-3">
                    <div class="table-responsive">
                        <table class="table table-hover nowrap" style="width: 100%;" id="tblRecicle">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Fecha</th>
                                    <th class="text-danger">Se elimina</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end row-->

<?php include_once 'views/components/modal.php'; ?>

<?php include_once 'views/templates/footer.php'; ?>