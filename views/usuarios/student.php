<?php include_once 'views/templates/header.php'; ?>

<div class="card">
    <div class="card-body">
        <div class="d-flex align-items-center">
            <div></div>
        </div>
        <h5 class="card-title text-center"><i class="fas fa-book"></i> Listado de Estudiantes Empresas</h5>
        <hr>
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover align-middle nowrap" id="tblStudent" style="width: 100%;">
                <thead>
                    <tr>
                        <th>empresa</th>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>correo</th>
                        <th>telefono_celular</th>
                        <th>departamento</th>
                        <th>curso</th>
                    </tr>
                </thead>

                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?php include_once 'views/templates/footer.php'; ?>