const btnNuevo = document.querySelector('#btnNuevo');
const btnNuevoFolder = document.querySelector('#btnNuevoFolder');
const btnCrearCarpeta = document.querySelector('#btnCrearCarpeta');
const btnCrearCarpetaPublic = document.querySelector('#btnCrearCarpetaPublic');
const frm = document.querySelector('#frmNuevaCarpeta');
const frmPublic = document.querySelector('#frmNuevaCarpetaPublic');
const nombreCarpeta = document.querySelector('#nombreCarpeta');
const nombreCarpetaPublic = document.querySelector('#nombreCarpetaPublic');
const errorNombreCarpeta = document.querySelector('#errorNombreCarpeta');
const errorNombreCarpetaPublic = document.querySelector('#errorNombreCarpetaPublic');
const id_carpeta = document.querySelector('#id_carpeta');
const id_carpetaPublic = document.querySelector('#id_carpetaPublic');
const archivo = document.querySelector('#archivo');
const frmArchivo = document.querySelector('#frmArchivo');
const btnNuevoArchivo = document.querySelector('#btnNuevoArchivo');
const containerAccion = document.querySelector('#containerAccion');
const btnCompartir = document.querySelector('#btnCompartir');
const frmCompartir = document.querySelector('#frmCompartir');
const btnAgregarUsuarios = document.querySelector('#btnAgregarUsuarios');
const usuarios = document.querySelector('#usuarios');

const carpeta = new bootstrap.Modal('#modalCarpeta');
const carpetaPublic = new bootstrap.Modal('#modalCarpetaPublic');
const modalAccion = new bootstrap.Modal('#modalAccion');
const modalAccionIntoFolder = new bootstrap.Modal('#modalAccionIntoFolder');
const modalCompartir = new bootstrap.Modal('#modalCompartir');

const tblUserAcceso = document.querySelector('#tblUserAcceso tbody');

const search = document.querySelector('#search');
const error = document.querySelector('#error');

//Init Document
document.addEventListener('DOMContentLoaded', function () {
    //Modal Para crear carpeta según Usuario
    console.log(btnNuevo);
    btnNuevo.addEventListener('click', function () {
        carpeta.show();
        nombreCarpeta.value = ''; })
    // crear nueva carpeta
    btnCrearCarpeta.addEventListener('click', function () {
        errorNombreCarpeta.textContent = '';
        if (nombreCarpeta.value == '') {
            alertaPersonalizada('warning', 'INGRESA EL NOMBRE');
            errorNombreCarpeta.textContent = 'INGRESA EL NOMBRE';
            nombreCarpeta.focus();
        } else {
            const url = base_url + 'carpetas/create';
            //crear formData
            const data = new FormData(frm);
            //hacer una instancia del objeto XMLHttpRequest 
            const http = new XMLHttpRequest();
            //Abrir una Conexion - POST - GET
            http.open('POST', url, true);
            //Enviar Datos
            http.send(data);
            //verificar estados
            http.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    const res = JSON.parse(this.responseText);
                    alertaPersonalizada(res.type, res.msg);
                    if (res.type == 'success') {
                        carpeta.hide();
                        setTimeout(() => {
                            window.location.reload();
                        }, 1500);
                    }
                }
            }
        }
    });
 //######### crear nueva carpeta Publica
 btnCrearCarpetaPublic.addEventListener('click', function () {
    errorNombreCarpetaPublic.textContent = '';
    if (nombreCarpetaPublic.value == '') {
        alertaPersonalizada('warning', 'INGRESA EL NOMBRE');
        errorNombreCarpetaPublic.textContent = 'INGRESA EL NOMBRE';
        nombreCarpetaPublic.focus();
    } else {
        const url = base_url + 'carpetas/createPublicFolder';
        //crear formData
        const data = new FormData(frm);
        //hacer una instancia del objeto XMLHttpRequest 
        const http = new XMLHttpRequest();
        //Abrir una Conexion - POST - GET
        http.open('POST', url, true);
        //Enviar Datos
        http.send(data);
        //verificar estados
        http.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                const res = JSON.parse(this.responseText);
                alertaPersonalizada(res.type, res.msg);
                if (res.type == 'success') {
                    carpetaPublic.hide();
                    setTimeout(() => {
                        window.location.reload();
                    }, 1500);
                }
            }
        }
    }
});
    //########## abrir administrador de archivos
    btnNuevoArchivo.addEventListener('click', function () {
        archivo.click();
    })

    //########## change del archivo
    archivo.addEventListener('change', function () {

        const http = new XMLHttpRequest();
        const url = base_url + 'archivos/upload';
        http.open("POST", url, true);
        // upload progress event
        http.upload.addEventListener("progress", function (e) {
            let porcentaje = (e.loaded / e.total) * 100;
            const total = porcentaje.toFixed(0);
            containerAccion.innerHTML = `<div class="progress">
                <div class="progress-bar" role="progressbar" style="width: ${total}%;" aria-valuenow="${total}" aria-valuemin="0" aria-valuemax="100">${total}%</div>
            </div>`;
        });
        http.send(new FormData(frmArchivo));
        http.addEventListener("load", function (e) {
            setTimeout(() => {
                window.location.reload();
            }, 1000);
        });
        http.onreadystatechange = function () {
            if (this.readyState == 4 && this.status == 200) {
                const res = JSON.parse(this.responseText);
                alertaPersonalizada(res.type, res.msg);
            }
        };
    })

    //########## compartir archivo
    btnCompartir.addEventListener('click', function () {
        modalAccion.hide();
        usuariosAcceso(id_carpeta.value);
        modalCompartir.show();
    })

    $(".multiple-select").select2({
        ajax: {
            url: base_url + 'archivos/buscarUsuario',
            dataType: 'json',
            delay: 250,
            data: function (params) {
                return {
                    q: params.term
                };
            },
            processResults: function (data) {
                return {
                    results: data
                };
            },
            cache: true
        },
        minimumInputLength: 2,
        dropdownParent: $('#modalCompartir'),
        theme: 'bootstrap-5',
        width: $(this).data('width') ? $(this).data('width') : $(this).hasClass('w-100') ? '100%' : 'style',
        placeholder: 'Buscar usuario',
    });

    //########## agregar usuarios
    btnAgregarUsuarios.addEventListener('click', function () {
        if (usuarios.value == '') {
            alertaPersonalizada('warning', 'SELECCIONA UN USUARIO');
        } else {
            const url = base_url + 'archivos/add_user';
            //crear formData
            const data = new FormData(frmCompartir);
            data.append('id_carpeta', id_carpeta.value);
            //hacer una instancia del objeto XMLHttpRequest 
            const http = new XMLHttpRequest();
            //Abrir una Conexion - POST - GET
            http.open('POST', url, true);
            //Enviar Datos
            http.send(data);
            //verificar estados
            http.onreadystatechange = function () {
                if (this.readyState == 4 && this.status == 200) {
                    console.log(this.responseText);
                    const res = JSON.parse(this.responseText);
                    alertaPersonalizada(res.type, res.msg);
                    if (res.type == 'success') {
                        modalCompartir.hide();
                        setTimeout(() => {
                            window.location.reload();
                        }, 2000);
                    }
                }
            }
        }
    })

    //autocomplete clientes
    $("#search").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: base_url + 'archivos/buscar',
                dataType: "json",
                data: {
                    term: request.term
                },
                success: function (data) {
                    response(data);
                    if (data.length > 0) {
                        error.textContent = '';
                    } else {
                        error.textContent = 'NO HAY ARCHIVO CON ESE NOMBRE';
                    }
                }
            });
        },
        minLength: 2,
        select: function (event, ui) {
            const directorio = ui.item.nombre;
            search.value = '';
            window.open(base_url + 'assets/archivos/' + directorio, '_blank');
            return false;
        }
    });

    $('#tblRecicle').DataTable({
        ajax: {
            url: base_url + 'recicle/listar',
            dataSrc: ''
        },
        columns: [
            { data: 'id' },
            { data: 'nombre' },
            { data: 'fecha_create' },
            { data: 'fecha_delete' },
            { data: 'accion' }
        ],
        language: {
            url: base_url + 'assets/js/espanol.json'
        },
        dom,
        buttons,
        responsive: true,
        order: [[0, 'desc']],
    });

}) //End Document
//-------------------------------------------------------------------
//Muestra Modal para agregar o compartir carpeta
function accionCarpeta(idCarpeta) {
    id_carpeta.value = idCarpeta;
    modalAccion.show();
}
//Muestra Modal para agregar o compartir archivo
function accionIntoFolder(idCarpeta) {
    id_carpeta.value = idCarpeta;
    modalAccionIntoFolder.show();
}
function usuariosAcceso(idCarpeta) {
    const url = base_url + 'archivos/user_access/' + idCarpeta;
    //hacer una instancia del objeto XMLHttpRequest 
    const http = new XMLHttpRequest();
    //Abrir una Conexion - POST - GET
    http.open('GET', url, true);
    //Enviar Datos
    http.send();
    //verificar estados
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            console.log(this.responseText);
            const res = JSON.parse(this.responseText);
            let html = '';
            if (res.length > 0) {
                res.forEach(usuario => {
                    html += `<tr>
                            <td>${usuario.nombre}</td>
                            <td>${usuario.correo}</td>
                            <td><button type="button" class="btn btn-danger btn-sm" onclick="deleteUser(${usuario.id})"><i class="fas fa-trash"></i></button></td>
                        </tr>`;
                });
            } else {
                html = `<tr>
                        <td colspan="3" class="text-center">Solo tú tienes acceso</td>
                    </tr>`;
            }
            tblUserAcceso.innerHTML = html;
        }
    }
}

//eliminar usuario de una carpeta
function deleteUser(idusuario) {
    const url = base_url + 'archivos/delete_user/' + idusuario;
    //hacer una instancia del objeto XMLHttpRequest 
    const http = new XMLHttpRequest();
    //Abrir una Conexion - POST - GET
    http.open('GET', url, true);
    //Enviar Datos
    http.send();
    //verificar estados
    http.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            const res = JSON.parse(this.responseText);
            alertaPersonalizada(res.type, res.msg);
            if (res.type == 'success') {
                usuariosAcceso(id_carpeta.value)
            }
        }
    }
}