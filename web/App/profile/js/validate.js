/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {

    $("span.help-block").hide();

    cbo_tipoId();

    /* Validar campos solo numeros */
    $('.solo-numero').keyup(function() {
        this.value = (this.value + '').replace(/[^0-9]/g, '');
    });

    /* Validar campos solo texto */
    $('.solo-letras').keyup(function() {
        this.value = (this.value + '').replace(/[^a-zA-Z\s]/g, '');
    });

});

function validarFormPerfil() {
    validacion("txt_codigo");
    validacion("txt_descripcion");
    if (
            validacion("txt_codigo") &&
            validacion("txt_descripcion")) {
        return true;
    } else {
        return false;
    }
}

function validacion(campo) {
    
    /*
     * Validaciones Forma perfil
     */

    if (campo === 'txt_codigo') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length >= 1 && valor.length < 40 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    
    if (campo === 'txt_descripcion') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 4 && valor.length < 40 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    
    
    }

