<!-- Modal Carpeta -->
<div id="modalCarpeta" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Nueva carpeta</h5>
            </div>
            <div class="modal-body">
                <form id="frmNuevaCarpeta" autocomplete="off">
                    <div class="input-group">
                        <span class="input-group-text " ><i class="fas fa-folder"></i></span>
                        <input class="form-control" type="text" id="nombreCarpeta" name="nombreCarpeta" placeholder="Nombre">
                    </div>
                    <span id="errorNombreCarpeta" class="text-danger"></span>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" id="btnCrearCarpeta" class="btn btn-outline-success px-3"><i class='fas fa-folder-plus mr-1'></i> Crear</button>
                <button type="button" class="btn btn-outline-danger px-3" data-bs-dismiss="modal"><i class='fas fa-ban mr-1'></i> Cancelar</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal Carpeta Publica-->
<div id="modalCarpetaPublic" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Nueva carpeta Publica</h5>
            </div>
            <div class="modal-body">
                <form id="frmNuevaCarpetaPublic" autocomplete="off">
                    <div class="input-group">
                        <span class="input-group-text " ><i class="fas fa-folder"></i></span>
                        <input class="form-control" type="text" id="nombreCarpetaPublic" name="nombreCarpetaPublic" placeholder="Nombre">
                    </div>
                    <span id="errorNombreCarpetaPublic" class="text-danger"></span>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" id="btnCrearCarpetaPublic" class="btn btn-outline-success px-3"><i class='fas fa-folder-plus mr-1'></i> Crear</button>
                <button type="button" class="btn btn-outline-danger px-3" data-bs-dismiss="modal"><i class='fas fa-ban mr-1'></i> Cancelar</button>
            </div>
        </div>
    </div>
</div>
<!-- Modal subir archivo -->
<div id="modalAccion" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <div class="fm-menu" id="containerAccion">
                    <div class="list-group list-group-flush">
                        <a href="javascript:;" id="btnNuevoArchivo" class="list-group-item py-3"><i class="fa-solid fa-cloud-arrow-up me-2"></i><span>Subir archivo</span></a>
                        <a href="javascript:;" id="btnCompartir" class="list-group-item py-3"><i class="fa-solid fa-square-share-nodes me-2"></i><span>Compartir</span></a>
                    </div>
                </div>
                <form id="frmArchivo">
                    <input type="hidden" id="id_carpeta" name="id_carpeta">
                    <input type="file" name="archivo" id="archivo" class="d-none">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal subir archivo Into Folder-->
<div id="modalAccionIntoFolder" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <div class="modal-body">
                <div class="fm-menu" id="containerAccion">
                    <div class="list-group list-group-flush">
                        <a href="javascript:;" id="btnNuevoArchivo" class="list-group-item py-3"><i class="fa-solid fa-cloud-arrow-up me-2"></i><span>Subir archivo</span></a>
                    </div>
                </div>
                <form id="frmArchivo">
                    <input type="hidden" id="id_carpeta" name="id_carpeta">
                    <input type="file" name="archivo" id="archivo" class="d-none">
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Modal compartir archivo -->
<div id="modalCompartir" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="my-modal-title" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                </button>
            </div>
            <form id="frmCompartir">
                <div class="modal-body">
                    <input type="hidden" id="id_carpetaCompartir" name="id_carpetaCompartir">
                    <div class="mb-3">
                        <label class="form-label">Agregar usuarios</label>
                        <select class="multiple-select" multiple="multiple" name="usuarios[]" id="usuarios">
                        </select>
                    </div>
                    <h6 class="text-center">Usuarios con acceso</h6>
                    <hr>
                    <table class="table table-striped" style="width: 100%;" id="tblUserAcceso">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>E-mail</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div class="modal-footer text-end">
                    <button type="button" id="btnAgregarUsuarios" class="btn btn-outline-info px-5"><i class="fas fa-share-nodes mr-1"></i> Compartir</button>
                </div>
            </form>
        </div>
    </div>
</div>