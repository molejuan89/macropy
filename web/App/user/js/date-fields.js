/* 
 * Campos de fecha que deben cargar datepicker de bootstrap
 */

$.fn.datepicker.defaults.format = "yyyy-mm-dd";

$(document).ready(function() {
    $('.datepicker').datepicker({
        autoclose: true
    });
});
        