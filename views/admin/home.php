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
            <div class="card-body ">
                <?php include_once 'views/components/search.php'; ?>
                <hr>
                <!--end row-->
                <h5>Nueva carpetas</h5>
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
                                    <h6 class="mb-0 text-primary"><a class="text-info" href="<?php echo BASE_URL . 'carpetas/details/' . $carpeta['id']; ?>"><?php echo $carpeta['nombre']; ?></a></h6>
                                    <small><?php echo $archivo['total']; ?> <?php echo ($archivo['total'] > 1) ? 'archivos' : 'archivo'; ?></small>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <!--end row-->
                <div>
                    <h5 class="mb-0">Ultimos archivos subidos</h5>
                    <hr>
                </div>
                <div class="table-responsive mt-3">
                    <table class="table table-striped table-hover table-sm mb-0 align-middle">
                        <thead>
                            <tr>
                                <th>Nombre <i class='bx bx-up-arrow-alt ms-2'></i>
                                </th>
                                <th>Miembros</th>
                                <th>Última modificación</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if (empty($data['archivos'])) { ?>
                                <tr>
                                    <td colspan="4" class="text-center">NO HAY ARCHIVOS</td>
                                </tr>
                                <?php } else {
                                foreach ($data['archivos'] as $archivo) {
                                    $miembro = $archivos->getArchivosUsuarios($archivo['id']); ?>
                                    <tr>
                                        <td>
                                            <div class="font-weight-bold text-info">
                                                <i class="fas fa-eye"></i> <a class="text-info" href="<?php echo BASE_URL . 'assets/archivos/' . $archivo['carpeta'] . '/' . $archivo['nombre']; ?>" target="_blank"><?php echo $archivo['nombre']; ?></a>
                                            </div>
                                        </td>
                                        <td><?php if ($miembro['total'] == 0) {
                                                echo 'Solo tú';
                                            } else if ($miembro['total'] > 1) {
                                                echo $miembro['total'] . ' Miembros';
                                            } else {
                                                echo $miembro['total'] . ' Miembro';
                                            }
                                            ?></td>
                                        <td><?php echo $archivo['fecha_create']; ?></td>
                                        <td>
                                            <a href="<?php echo BASE_URL . 'assets/archivos/' . $archivo['carpeta'] . '/' . $archivo['nombre']; ?>" 
                                            download="<?php echo $archivo['nombre'] ?>" 
                                            class="btn btn-info btn-sm text-white"> 
                                            <span class="fas fa-download"></span></a>
                                        </td>
                                        <td>
                                            <button class="btn btn-outline-danger btn-sm" type="button" onclick="deleteArchivo(<?php echo $archivo['id']; ?>)"><i class='fas fa-trash'></i></button>
                                        </td>
                                        
                                    </tr>
                            <?php }
                            } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!--end row-->

<?php include_once 'views/components/modal.php'; ?>

<?php include_once 'views/templates/footer.php'; ?>