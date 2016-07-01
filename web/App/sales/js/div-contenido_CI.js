/*
*
*
*/
function contenido(action) {
    var htmlcontent = "";

    if (action == "Create_CI") {
        htmlcontent = " <div class=\"container-fluid well\">\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-5\">\n\
                                        <h4>\n\<a><strong> Create Comprobante de Ingreso</strong></a>\n\</h4>\n\
                                     <h5>\n\<a><strong> No.001</strong></a>\n\</h5>\n\
                                    </div>\n\
                                    <div class=\"col-xs-3\">\n\</div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_lugarCIngreso\">Buscar Consecutivo:</label>\n\
                                        <input class=\"form-control\" id =\"txt_lugarCIngreso\"  name =\"txt_lugarCIngreso\"   type =\"text\" placeholder=\"EJ: 0001\">\n\
                                    </div>\n\
                                    </div>\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_lugarCIngreso\">Lugar:</label>\n\
                                        <input class=\"form-control\" id =\"txt_lugarCIngreso\"  name =\"txt_lugarCIngreso\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_FechaCIngreso\">Fecha:</label>\n\
                                        <input class=\"form-control\" id=\"txt_FechaCIngreso\"  name=\"txt_FechaCIngreso\" type=\"text\" placeholder=\"EJ: 1993-12-22\">\n\
                                    </div>\n\
                                    </div>&nbsp;\n\
                                    <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_RecibidoDe\">Recibido de:</label>\n\
                                        <input class=\"form-control\" id =\"txt_RecibidoDe\" name =\"txt_RecibidoDe\"   type =\"text\" placeholder=\"EJ: JUAN PEREZ\">\n\
                                    </div>\n\
                                    <div class= \"col-xs-6\">\n\
                                        <label for=\"txt_DireccionCIngreso\">Direccion:</label>\n\
                                        <input class=\"form-control\" id=\"txt_DireccionCIngreso\" name=\"txt_DireccionCIngreso\" type=\"text\" placeholder=\"EJ: CALLE 69 # 7 M BIS 40\">\n\
                                    </div>\n\
                                    </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_ConceptoCIngreso\">Concepto:</label><br>\n\
                                                <input id =\"txt_ConceptoCIngreso\"  class=\"form-control\" name =\"txt_ConceptoCIngreso\" type=\"text\" placeholder=\"EJ: VENTA MATERIALES\"/>\n\
                                        </div>\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_FechaRetiro\">Fecha:</label><br>\n\
                                                <input id =\"txt_FechaRetiro\"  class=\"form-control\"  name=\"txt_FechaRetiro\" type=\"text\" placeholder=\"EJ: 2016-06-24\">\n\
                                        </div>\n\
                                        </div>&nbsp;\n\
                                        <div class=\"row\">\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_ValorNumericoCIngreso\">Valor Numérico:</label><br>\n\
                                                <input id =\"txt_ValorNumericoCIngreso\"  class=\"form-control\" name =\"txt_ValorNumericoCIngreso\" type=\"text\" placeholder=\"EJ: $100000\"/>\n\
                                        </div>\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_ValorLetrasCIngreso\">Valor en Letras:</label><br>\n\
                                                <input id =\"txt_ValorLetrasCIngreso\"  class=\"form-control\" name=\"txt_ValorLetrasCIngreso\" type=\"text\" placeholder=\"EJ: CIEN MIL PESOS MCTE\">\n\
                                        </div>\n\
                                        </div>&nbsp;\n\
                                        <div class=\"row\">\n\
                                        <div class=\"col-xs-6\">\n\
                                                <form role=\"form\">\n\
                                                    <label for=\"txt_EstadoCivil\">Forma de Pago:</label><br>\n\
                                                    <input type=\"radio\" id=\"ra_Cheque\" name=\"optradio\">Cheque &nbsp;\n\
                                                    <input type=\"radio\" id=\"ra_Efectivo\" name=\"optradio\">Efectivo &nbsp;\n\
                                                </form>\n\
                                        </div>\n\
                                        </div>&nbsp;\n\
                                        <div class=\"row\">\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_CuentaCIngreso\">Cuenta:</label><br>\n\
                                                <input id =\"txt_CuentaCIngreso\"  class=\"form-control\" name =\"txt_CuentaCIngreso\" type=\"text\" placeholder=\"EJ: $1105\"/>\n\
                                        </div>\n\
                                        <div class=\"col-xs-6\">\n\
                                                <label for=\"txt_DetalleCIngreso\">Detalle:</label><br>\n\
                                                <input id =\"txt_DetalleCIngreso\"  class=\"form-control\" name=\"txt_DetalleCIngreso\" type=\"text\" placeholder=\"EJ: BANCOS\">\n\
                                        </div>\n\
                                        </div>&nbsp;\n\
                                        <div class=\"row\">\n\
                                            <div class=\"col-xs-4\">\n\
                                                <button id=\"Aceptar\" type=\"button\" class=\"btn btn-danger \">Aceptar</button>\n\
                                            </div>\n\
                                            <div class=\"col-xs-4\">\n\
                                        <button id=\"Actualizar\" type=\"button\" class=\"btn btn-danger \">Actualizar</button>\n\
                                            </div\n\
                                        <div class=\"col-xs-4\">\n\
                                       <button id=\"Imprimir\" type=\"button\" class=\"btn btn-danger \">Imprimir</button>\n\
                                        </div>\n\
                                        </div>\n\
                                    </div>\n\
";
    }   else  if (action == "Read/Disable_CI") {
         htmlcontent = " <div class=\"container-fluid well\">\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-7\">\n\
                                        <h4>\n\<a><strong> Read/Disable Comprobante de Ingreso</strong></a>\n\</h4>\n\
                                    </div>\n\
                                    <div class=\"col-xs-2\">\n\</div>\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_lugarCIngreso\">Buscar Consecutivo:</label>\n\
                                        <input class=\"form-control\" id =\"txt_lugarCIngreso\"  name =\"txt_lugarCIngreso\"   type =\"text\" placeholder=\"EJ: 0001\">\n\
                                    </div>\n\
                                    </div>\n\
                                </div>\n\
";
    }
    document.getElementById("contenido").innerHTML = htmlcontent;
}

function formaPago(action) {
    var htmlFormaPago = "";
}

