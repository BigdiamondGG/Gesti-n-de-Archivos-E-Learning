<?php include_once 'views/templates/header.php'; ?>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title text-center"><?php echo $data['carpeta']['nombre']; ?></h5>
                <!-- New -->
                    <a href="javascript:;" id="btnNuevoArchivoPublic" class="list-group-item py-3"><i class="fa-solid fa-cloud-arrow-up me-2"></i><span>Subir archivo</span></a>

                <!-- End New -->
                <hr>
                <input type="hidden" id="id_carpeta" value="<?php echo $data['carpeta']['id']; ?>">
                <div class="table-responsive">
                    <table class="table table-hover nowrap" style="width: 100%;" id="tblDetalle">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Tipo</th>
                                <th>Fecha</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

<?php include_once 'views/templates/footer.php'; ?>