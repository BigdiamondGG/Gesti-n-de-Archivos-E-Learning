const btnCrearCarpetaPublic = document.querySelector('#btnCrearCarpetaPublic');
const frmPublic = document.querySelector('#frmNuevaCarpetaPublic');
const nombreCarpetaPublic = document.querySelector('#nombreCarpetaPublic');
const errorNombreCarpetaPublic = document.querySelector('#errorNombreCarpetaPublic');
const id_carpetaPublic = document.querySelector('#id_carpetaPublic');
const archivoPublic = document.querySelector('#archivoPublic');
const frmArchivoPublic = document.querySelector('#frmArchivoPublic');
const btnNuevoArchivoPublic = document.querySelector('#btnNuevoArchivoPublic');
const btnNuevoArchivoIFP = document.querySelector('#btnNuevoArchivoIFP');
const containerAccionPublic = document.querySelector('#containerAccionPublic');
const btnCompartir = document.querySelector('#btnCompartir');
const frmCompartir = document.querySelector('#frmCompartir');
const btnAgregarUsuarios = document.querySelector('#btnAgregarUsuarios');
const usuarios = document.querySelector('#usuarios');
const archivoIF = document.querySelector('.archivoIF')

const carpetaPublic = new bootstrap.Modal('#modalCarpetaPublic');
const modalAccionPublic = new bootstrap.Modal('#modalAccionPublic');
const modalCompartir = new bootstrap.Modal('#modalCompartir');

const tblUserAcceso = document.querySelector('#tblUserAcceso tbody');

const search = document.querySelector('#search');
const error = document.querySelector('#error');

//Init Document
document.addEventListener('DOMContentLoaded', function () {
    //Modal Para crear carpeta publica
    btnNuevoFolder.addEventListener('click', function () {
        carpetaPublic.show();
        nombreCarpetaPublic.value = ''; }) 
  
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
        const data = new FormData(frmPublic);
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
    //abrir administrador de archivos
    btnNuevoArchivoPublic.addEventListener('click', function () {
        archivoPublic.click();
    })
    // change del archivo
    archivoPublic.addEventListener('change', function () {

        const http = new XMLHttpRequest();
        const url = base_url + 'archivos/uploadPublic';
        http.open("POST", url, true);
        // upload progress event
        http.upload.addEventListener("progress", function (e) {
            let porcentaje = (e.loaded / e.total) * 100;
            const total = porcentaje.toFixed(0);
            containerAccionPublic.innerHTML = `<div class="progress">
                <div class="progress-bar" role="progressbar" style="width: ${total}%;" aria-valuenow="${total}" aria-valuemin="0" aria-valuemax="100">${total}%</div>
            </div>`;
        });
        http.send(new FormData(frmArchivoPublic));
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

    //autocomplete Archivo
    $("#searchPublic").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: base_url + 'archivos/buscarPublic',
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

    $('#tblRPublic').DataTable({
        ajax: {
            url: base_url + 'reciclePublic/listarPublic',
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
function accionCarpetaPublic(idCarpeta) {
    id_carpetaPublic.value = idCarpeta;
    modalAccionPublic.show();
}
// archivoIF.addEventListener('click', accionCarpetaPublic);

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