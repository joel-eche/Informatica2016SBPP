/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd'
    });

    $(".view").click(function () {
        var id = $(this).attr("regId");

        $.get(path + "obtener/" + id + ".json", null, function (data) {
            if (data) {
                fillForm(data);
            }
        });
    });




// Paginacion
    $("#inicio").click(function () {
        if (paginacion.page > 1) {
            window.location.search = "page=1&size=" + paginacion.size + "&search=" + paginacion.search;
        }
    });

    $("#anterior").click(function () {
        if ((paginacion.page - 1) > 0) {
            paginacion.page--;
            window.location.search = "page=" + paginacion.page + "&size=" + paginacion.size + "&search=" + paginacion.search;
        }
    });

    $("#siguiente").click(function () {
        if ((paginacion.page + 1) <= paginacion.totalPage) {
            paginacion.page++;
            window.location.search = "page=" + paginacion.page + "&size=" + paginacion.size + "&search=" + paginacion.search;
        }
    });

    $("#fin").click(function () {
        if (paginacion.page < paginacion.totalPage) {
            window.location.search = "page=" + paginacion.totalPage + "&size=" + paginacion.size + "&search=" + paginacion.search;
        }
    });

    $("#form-filtrar").submit(function (e) {        
        e.preventDefault();
        window.location.search = "page=1&size=" + paginacion.size + "&search=" + $("#search").val();
    });

});

function fillForm(data) {
    $("#nombre").val(data.nombre);
    $("#descripcion").val(data.descripcion);
    $("#monto").val(data.monto);
    if (data.activo == 0) {
        $("#idestado").val('Activo');
    }
    else
        $("#idestado").val('Inactivo');
    $("#example").modal('show');
}


