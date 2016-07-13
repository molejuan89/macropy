

$(document).ready(function() {

    $("span.help-block").hide();

    /* Validar campos solo numeros */
    $('.solo-numero').keyup(function() {
        this.value = (this.value + '').replace(/[^0-9]/g, '');
    });

    /* Validar campos solo texto */
    $('.solo-letras').keyup(function() {
        this.value = (this.value + '').replace(/[^a-zA-Z\s]/g, '');
    });
});


function validarFormMenu() {
    validacion("message");
    validacion("code");
    validacion("order");
    validacion("link");
    validacion("Tipo");
    if (
    validacion("message") &&
    validacion("code") &&
    validacion("order") &&
    validacion("link") &&
    validacion("Tipo"))
    {
        return true;
    } else {
        return false;
    }
}


function validacion(campo) {

    if (campo === 'message') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='form controlglyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }

    if (campo === 'code') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && valor.length <=10 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok  form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    if (campo === 'order') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok  form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    if (campo === 'link') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok  form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }

   

    if (campo === 'Tipo') {
        if ($('input[name="' + campo + '"]').is(':checked')) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='form controlglyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }

   

   
}
