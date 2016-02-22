/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd'
    });

    $(".edited").click(function () {
        var dni = $(this).attr("regId");

        $.get(path + "obtener/" + dni + ".json", null, function (data) {
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
    $("#dni").val(data.dni);
    $("#nombres").val(data.nombres);
    $("#apellidos").val(data.apellidos);
    if (data.sexo == 'M') {
        $("#idsexo").val(0);
    }
    else
        $("#idsexo").val(1);
    $("#direccion").val(data.direccion);
    $("#fchnac").val(data.fecha);
    if (data.estado == 0) {
        $("#idestado").val(0);
    }
    else
        $("#idestado").val(1);
    $("#example").modal('show');
}

function isFormValid() {

    if (!isTextValid($("#placa").val())) {
        showError("Debe ingresar la placa.");
        $("#placa").focus();
        return false;
    }

    if (!isTextValid($("#anio").val())) {
        showError("Debe ingresar el año.");
        $("#anio").focus();
        return false;
    }

    if (!isNumber($("#anio").val())) {
        showError("El año debe ser un número.");
        $("#anio").focus();
        return false;
    }

    if (!isTextValid($("#estado").val())) {
        showError("Debe ingresar el estado.");
        $("#estado").focus();
        return false;
    }

    if (!isTextValid($("#modelobusId").val())) {
        showError("Debe seleccionar el modelo de bus.");
        return false;
    }

    if (!isTextValid($("#agenciaId").val())) {
        showError("Debe seleccionar la agencia.");
        return false;
    }

    return true;
}



