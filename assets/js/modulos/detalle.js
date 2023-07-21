let tblDetalle;
const id_carpeta = document.querySelector('#id_carpeta');
document.addEventListener('DOMContentLoaded', function () {
    //cargar datos con el plugin datatables
    tblDetalle = $('#tblDetalle').DataTable({
        ajax: {
            url: base_url + 'carpetas/listarDetalle/' + id_carpeta.value,
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