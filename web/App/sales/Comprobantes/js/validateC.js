/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

function validarFormDatosBasicos() {
    validacion("cbx_Lugar");
    validacion("cbx_tercero");
    validacion("txt_direccion");
    validacion("txt_valorTotal");
    validacion("txt_ContablizadoPor");
    if (
            validacion("cbx_Lugar") &&
            validacion("cbx_tercero") &&
            validacion("txt_direccion") &&
            validacion("txt_valorTotal") &&
            validacion("txt_ContablizadoPor")) {
        return true;
    } else {
        return false;
    }
}

function validarFormConceptos() {
    validacion("txt_concepto");
    validacion("cbx_cuenta");
    validacion("txt_efectivo");
    validacion("txt_cheque");
    validacion("txt_transferencia");
    validacion("txt_consignacion");
    if (
    validacion("txt_concepto") &&
    validacion("cbx_cuenta") &&
    validacion("txt_efectivo") &&
    validacion("txt_cheque") &&
    validacion("txt_transferencia") &&
    validacion("txt_consignacion")) {
        return true;
    } else {
        return false;
    }
}



function validacion(campo) {
    /*
    * Validar Form Datos Basicos Comprobante 
    */

    if (campo === 'cbx_Lugar') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }

    if (campo === 'cbx_tercero') {
        var valor = $('#' + campo).val();
        if (valor !== null  && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }



    if (campo === 'txt_direccion') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 4 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    if (campo === 'txt_valorTotal') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length >= 3 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    if (campo === 'txt_ContablizadoPor') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length >= 3 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    
    
/*
 * Validar Forma Agregar Concepto
 */

 if (campo === 'txt_concepto') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }

    if (campo === 'cbx_cuenta') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
     if (campo === 'txt_efectivo') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
     if (campo === 'txt_cheque') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
     if (campo === 'txt_transferencia') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
     if (campo === 'txt_consignacion') {
        var valor = $('#' + campo).val();
        if (valor !== null && valor.length > 2 && valor.length < 60 && !(/^\s+$/.test(valor))) {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-success has-feedback");
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-ok form-control-feedback'></span>");
            return true;
        } else {
            $("#glypcn" + campo).remove();
            $('#' + campo).parent().parent().attr("class", "has-error has-feedback");
            //$('#' + campo).parent().children('span.help-block').text("Ingrese su Nombre").show();
            $('#' + campo).parent().append("<span id='glypcn" + campo + "' class='glyphicon glyphicon-remove form-control-feedback'></span>");
            return false;
        }
    }
    
    
}

