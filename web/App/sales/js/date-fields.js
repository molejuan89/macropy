/* 
 * Campos de fecha que deben cargar datepicker de bootstrap
 */

$.fn.datepicker.defaults.format = "yyyy-mm-dd";

$(document).ready(function() {
    $('#txt_fechaExpedicion').datepicker();
});

$(document).ready(function() {
    $('#txt_fechaNaci').datepicker();
});

$(document).ready(function() {
    $('#txt_fechaTarjeta').datepicker();
});


$(document).ready(function() {
    $('#txt_fechaIngreso').datepicker();
});


$(document).ready(function() {
    $('#txt_fechaRetiro').datepicker();
});
        