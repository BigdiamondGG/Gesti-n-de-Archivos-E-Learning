<div class="card">
    <div class="card-body">
        <div class="d-grid"> <a href="javascript:;" class="btn btn-outline-info text-secondary" id="btnNuevo">+ Nueva carpeta</a>
        </div>
        <h5 class="my-3"></h5>
        <div class="fm-menu">
            <div class="list-group list-group-flush">
                <a href="<?php echo BASE_URL . 'admin'; ?>" class="list-group-item py-1 <?php echo ($data['active'] == 'recients') ? 'active text-white bg-info' : ''; ?>"><i class='bx bx-time me-2' ></i><span>Recientes</span></a>
                <a href="<?php echo BASE_URL . 'alls/page'; ?>" class="list-group-item py-1 <?php echo ($data['active'] == 'alls') ? 'active text-white bg-info' : ''; ?>"><i class="fas fa-folder-open me-2"></i><span>Todos</span></a>
                <a href="<?php echo BASE_URL . 'recicle'; ?>" class="list-group-item py-1 <?php echo ($data['active'] == 'delete') ? 'active text-white bg-info' : ''; ?>"><i class="fas fa-trash me-2"></i><span>Papelera</span></a>
            </div>
        </div>
    </div>
</div>