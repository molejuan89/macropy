/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function modiframe(frame, destino) {
    document.getElementById(frame).src = destino;
}

function setValue(campo, valor, formatofecha) {
    console.log(campo + ":" + valor);
    if (valor !== null && valor.length > 0 && !(/^\s+$/.test(valor))) {

        if (formatofecha) {
            valor = valor.substring(0, 10);
            console.log(campo + " substring:" + valor);
        }

        if ($('#' + campo).is('input:radio')) {
            $('input:radio[name=' + campo + ']').filter('[value=' + valor + ']').prop('checked', true);
        } else if ($('#' + campo).is('input:text')) {
            $('#' + campo).val(valor);
        }
    }
}

function urlEscape(url) {
    var chars = [' ', '<', '>', '#', '%', '~', '/', '|', ';', ':', '@', '=', '?', '&'];
    
        var source = url;
        var dest = "";
        for (var i = 0; i < source.length; i++) {
            
            var c = source.charAt(i);
            var found = 0;
            
            for (var j = 0; (!found) && (j < chars.length); j++) {
                if (chars[j] == c) {
                    found = 1;
                }
            }
            
            if (found) {
                dest += "%" + source.charCodeAt(i).toString(16);
            } else {
                dest += c;
            }
        }
        
    return dest;
    
}