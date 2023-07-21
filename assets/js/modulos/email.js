let tblEmail;
document.addEventListener('DOMContentLoaded', function () {
    //cargar datos con el plugin datatables
    tblEmail = $('#tblEmail').DataTable({
        ajax: {
            url: base_url + 'shared/listar',
            dataSrc: ''
        },
        columns: [
            { data: 'id' },
            { data: 'usuario' },
            { data: 'correo' },
            { data: 'nombre' },
            { data: 'fecha_add' },
            { data: 'status' },
            { data: 'accion' }
        ],
        language: {
            url: base_url + 'assets/js/espanol.json'
        },
        dom,
        buttons,
        createdRow: function(row, data, index) {
            //pintar una celda
            if (data.estado == 1) {
                //pintar una fila
                $('td', row).css({
                    'font-weight' : 'bold'
                });
            }
        },
        responsive: true,
        order: [[0, 'desc']],
    });
})

function leerArchivo(id) {
    const url = base_url + 'shared/leerArchivo/' + id;
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
            if (res.type == 'success') {
                document.querySelector('#message').textContent = res.message;
                tblEmail.ajax.reload();
            }
        }
    }
}