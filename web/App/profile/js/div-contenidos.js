
/*
 * 
 */

function contenido(action) {
    var htmlcontent = "";
 if (action == "Crear_Usuario") {
        htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Create User</strong></a>\n\
                            </h4>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Buscar:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Nombre Corto:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Buscar:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>&nbsp;\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\"></div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Aceptar</button>&nbsp;&nbsp;\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Modificar</button>\n\
                                </div>\n\
                                <div class=\"col-xs-3\"></div>\n\
                            </div>\n\
        </div>\n\
";
         } else if (action == "Forma_Pago") {
       htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Control de Consecutivos</strong></a>\n\
                            </h4>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Buscar:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Nombre Corto:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-6\">\n\
                                    <label for=\"txt_LugarExpedicion\">Buscar:</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>&nbsp;\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\"></div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Aceptar</button>&nbsp;&nbsp;\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Modificar</button>\n\
                                </div>\n\
                                <div class=\"col-xs-3\"></div>\n\
                            </div>\n\
        </div>\n\
";
    } else if (action == "Tipo_Tercero") {
        htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Tipos de Tercero</strong></a>\n\
                            </h4>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>&nbsp;\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\"></div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Aceptar</button>&nbsp;&nbsp;\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Modificar</button>\n\
                                </div>\n\
                                <div class=\"col-xs-3\"></div>\n\
                            </div>\n\
        </div>\n\
";
    }else if (action == "Tipo_Documento") {
        htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Tipos de Documento</strong></a>\n\
                            </h4>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                    <label for=\"txt_LugarExpedicion\">Codigo Sucursal</label>\n\
                                    <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                </div>\n\
                            </div>&nbsp;\n\
                            <div class=\"row\">\n\
                                <div class=\"col-xs-3\"></div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Aceptar</button>&nbsp;&nbsp;\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Modificar</button>\n\
                                </div>\n\
                                <div class=\"col-xs-3\"></div>\n\
                            </div>\n\
        </div>\n\
";
    }else if (action == "tercero"){
        htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Crear Tercero</strong></a>\n\
                            </h4>\n\
                                    <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Tipo Documento:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"tipodoc\" placeholder=\"EJ: CALI\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">NIT/Cedula:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"nitced\" placeholder=\"EJ: 1144148015\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Nombre:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"nom\" placeholder=\"EJ: JUAN PEREZ\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Razon Social:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"razon\" placeholder=\"EJ: JUAN PEREZ\">\n\
                                    </div>\n\
                                    </div>&nbsp;\n\
                                    <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Direccion:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"dir\" placeholder=\"EJ: CALLE 69 # 7 M BIS 40 \">\n\
                                    </div>\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Telefono:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"tel\" placeholder=\"EJ: 317 562 93 26\">\n\
                                    </div>\n\
                                    </div>&nbsp;\n\
                                    <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Fax:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"fax\" placeholder=\"EJ:  123 456 789\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">E_Mail:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"mail\" placeholder=\"EJ: JUAN.PEREZ@HOTMAIL.COM\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                        <div class=\"col-xs-12\">\n\
                                        <label for=\"txt_cod\">Tipo</label>\n\
                                        <form role=\"form\">\n\
                                            <input type=\"radio\" id=\"ra_Proveedor\" name=\"optradio\>&nbsp;Proveedor&nbsp;&nbsp;\n\
                                            <input type=\"radio\" id=\"ra_cliente\" name=\"optradio\">&nbsp;Cliente&nbsp;&nbsp;\n\
                                            <input type=\"radio\" id=\"ra_Empleado\" name=\"optradio\">&nbsp;Empleado&nbsp;&nbsp;\n\
                                            <input type=\"radio\" id=\"ra_Otro\" name=\"optradio\">&nbsp;Otro&nbsp;&nbsp;\n\
                                            <input type=\"radio\" id=\"ra_Alumno\" name=\"optradio\">&nbsp;Alumno&nbsp;&nbsp;\n\
                                            <input type=\"radio\" id=\"ra_Socio\" name=\"optradio\">&nbsp;Socio\n\
                                     </form>\n\
                             </div>\n\
                             </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Lugar:</label>\n\
                                       <input class=\"form-control\" type=\"text\" name=\"ciu\" placeholder=\"EJ: CALI\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Actividad Economica DIAN:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"dian\" placeholder=\"EJ: CULTIVO DE ARROZ\">\n\
                                    </div>\n\
                                      <div class=\"col-xs-6\">\n\
                                        <label for=\"txt_cod\">Actividad Economica ICA:</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"ica\" placeholder=\"EJ: ELABORACION DE PRODUCTOS LACTEOS\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                     <div class=\"row\">\n\
                                <div class=\"col-xs-3\"></div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Aceptar</button>&nbsp;&nbsp;\n\
                                </div>\n\
                                <div class=\"col-xs-3\">\n\
                                   <button type=\"button\" class=\"btn btn-danger form-control\">Modificar</button>\n\
                                </div>\n\
                                <div class=\"col-xs-3\"></div>\n\
                            </div>\n\
";
    }
    document.getElementById("contenido").innerHTML = htmlcontent;
}

