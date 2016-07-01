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

function validarForm() {
    validacion("txt_Nombres");
    validacion("txt_Apellido1");
    validacion("txt_Apellido2");
    validacion("txt_NumeroId");
    validacion("txt_User");
    validacion("cbx_TipoID");
    validacion("txt_FechaExpiracion");
    validacion("txt_FechaSistema");
    validacion("txt_Email");
    validacion("txt_Email2");
    validacion("txt_contrasena");
    validacion("txt_contrasenaReg2");
    if (
            validacion("txt_Nombres") &&
            validacion("txt_Apellido1") &&
            validacion("txt_Apellido2") &&
            validacion("txt_NumeroId") &&
            validacion("txt_User") &&
            validacion("cbx_TipoID") &&
            validacion("txt_FechaExpiracion") &&
            validacion("txt_FechaSistema") &&
            validacion("txt_Email") &&
            validacion("txt_Email2") &&
            validacion("txt_contrasena") &&
            validacion("txt_contrasenaReg2")) {
        return true;
    } else {
        return false;
    }
}

function validacion(campo) {
    
    /*
     * Validaciones Forma Login
     */

    if (campo === 'txt_EmailLogin') {
        var valor = $('#' + campo).val();
        if (valor !== null && !(/^\s+$/.test(valor))) {
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
    
        if (campo === 'txt_contrasenaLogin') {
        var valor = $('#' + campo).val();
        if (valor !== null && !(/^\s+$/.test(valor))) {
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
    
    /*
     * Validaciones Forma Registro Usuario
     */
    
    
    
     if (campo === 'txt_Nombres') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
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

    if (campo === 'txt_Apellido1') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 40 && !(/^\s+$/.test(valor))) {
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

    if (campo === 'txt_Apellido2') {
        var valor = $('#' + campo).val();
        if (((valor === null || valor.length === 0) || (valor !== null && valor.length > 2 && valor.length < 40 && !(/^\s+$/.test(valor)))) && validacion("txt_Apellido1")) {
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
    
        if (campo === 'txt_User') {
        var valor = $('#' + campo).val();
        if (valor !== null && !(/^\s+$/.test(valor))) {
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

    if (campo === 'txt_NumeroId') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 5 && valor.length <= 15 && !(/^\s+$/.test(valor))) {
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

    if (campo === 'cbx_TipoID') {
        var valor = $('#' + campo).val();
        if ((valor === 'CC') || (valor === 'CE') || (valor === 'TI')) {
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

    if (campo === 'txt_Email') {
        var valor = $('#' + campo).val();

        //var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
        var regex = /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;

        if (regex.test($('#' + campo).val().trim())) {
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
    
        if (campo === 'txt_Email2') {
        var valor = $('#' + campo).val();

        //var regex = /[\w-\.]{2,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/;
        var regex = /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;

        if (regex.test($('#' + campo).val().trim())) {
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

    if (campo === 'txt_contrasenaReg') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length >= 6 && !(/^\s+$/.test(valor))) {
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

    if (campo === 'txt_contrasenaReg2') {
        var valor = $('#' + campo).val();
        if (valor === $('#txt_contrasena').val() && validacion("txt_contrasena")) {
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

