let tblDetallePublic;
const id_carpetaPublic = document.querySelector('#id_carpetaPublic');
document.addEventListener('DOMContentLoaded', function () {
    //cargar datos con el plugin datatables
    tblDetallePublic = $('#tblDetallePublic').DataTable({
        ajax: {
            url: base_url + 'carpetas/listarDetallePublic/' + id_carpeta.value,
            dataSrc: ''
        },
        columns: [
            { data: 'id' },
            { data: 'nombre' },
            { data: 'tipo' },
            { data: 'fecha_create' },
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
})