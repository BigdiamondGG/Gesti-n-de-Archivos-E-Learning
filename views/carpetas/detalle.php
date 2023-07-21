<?php include_once 'views/templates/header.php'; ?>

<div class="card">
    <div class="card-body">
        
        <h5 class="card-title text-center"><?php echo $data['carpeta']['nombre']; ?></h5>
        <?php $idfolder= $data['carpeta']['id']; ?>
        <a  href="javascript:;" onclick="accionCarpeta(<?php echo $idfolder; ?>)" class="btn btn-info text-light py-2"><i class="fa-solid fa-cloud-arrow-up me-2"></i><span>Subir archivo</span></a>
        <div class="user-plus" onclick="accionCarpeta(<?php echo $idfolder; ?>)">+</div>
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
