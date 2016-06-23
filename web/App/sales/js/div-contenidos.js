function contenido(action) {
    var htmlcontent = "";

    if (action == "Comprobante_Ingreso") {
        htmlcontent = " <div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong> Crear Comprobante de Ingreso</strong></a>\n\
                            </h4>\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_LugarExpedicion\">Ciudad</label>\n\
                                        <input class=\"form-control\" id =\"txt_LugarExpedicion\"  name =\"txt_LugarExpedicion\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_FechaExpedicion\">Fecha</label>\n\
                                        <input class=\"form-control\" id=\"txt_FechaExpedicion\"  name=\"txt_FechaExpedicion\" type=\"text\" placeholder=\"EJ: 1993-12-22\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_LugarNacimiento\">Recibido de</label>\n\
                                        <input class=\"form-control\" id =\"txt_LugarNacimiento\" name =\"txt_LugarNacimiento\"   type =\"text\" placeholder=\"EJ: CALI\">\n\
                                    </div>\n\
                                    <div class= \"col-xs-3\">\n\
                                        <label for=\"txt_FechaNacimiento\">Direccion</label>\n\
                                        <input class=\"form-control\" id=\"txt_FechaNacimiento\" name=\"txt_FechaNacimiento\" type=\"text\" placeholder=\"EJ: 1993-12-22\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                        <div class=\"col-xs-3\">\n\
                                                <label for=\"txt_TelefonoEmpresa\">Telefono</label><br>\n\
                                                <input id =\"txt_TelefonoEmpresa\"  class=\"form-control\" name =\"txt_TelefonoEmpresa\" type=\"text\" placeholder=\"EJ: 4861717\"/>\n\
                                        </div>\n\
                                        <div class=\"col-xs-3\">\n\
                                                <label for=\"txt_Cargo\">Cargo</label><br>\n\
                                                <input id =\"txt_Cargo\"  class=\"form-control\" name =\"txt_Cargo\" type=\"text\" placeholder=\"EJ: OPERARIO\"/>\n\
                                        </div>\n\
                                        <div class=\"col-xs-3\">\n\
                                                <label for=\"txt_FechaIngreso\">Fecha Ingreso</label><br>\n\
                                                <input id =\"txt_FechaIngreso\"  class=\"form-control\" name=\"txt_FechaIngreso\" type=\"text\" placeholder=\"EJ: 5\">\n\
                                        </div>\n\
                                        <div class=\"col-xs-3\">\n\
                                                <label for=\"txt_FechaRetiro\">Fecha Retiro</label><br>\n\
                                                <input id =\"txt_FechaRetiro\"  class=\"form-control\"  name=\"txt_FechaRetiro\" type=\"text\" placeholder=\"EJ: 2015\">\n\
                                        </div>\n\
                                    </div>&nbsp;\n\
                                     <div class=\"row\">\n\
                                        <div class=\"col-xs-3\">\n\
                                                <label for=\"txt_UltimoSalario\">Ultimo Salario</label><br>\n\
                                                <input id=\"txt_UltimoSalario\"  class=\"form-control\" name =\"txt_UltimoSalario\" type =\"text\" placeholder=\"EJ: 1000000\"/>\n\
                                        </div>\n\
";
    } else if (action == "Control_Consecutivos") {
        htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Control de Consecutivos</strong></a>\n\
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
         } else if (action == "Forma_Pago") {
       htmlcontent = "<div class=\"container-fluid well\">\n\
                            <h4>\n\
                                <a><strong>Formas de Pago</strong></a>\n\
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
                                        <div class=\"col-xs-8\">\n\
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
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Codigo</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"txt_cod\"></td>\n\
                                    </div>\n\
                                    </div>&nbsp;\n\
                                    <div class=\"row\">\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Tipo Documento</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"tipodoc\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">NIT/Cedula</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"nitced\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Nombre</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"nom\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Razon Social</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"razon\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Direccion</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"dir\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Telefono</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"tel\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Fax</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"fax\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">E_Mail</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"mail\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_cod\">Ciudad</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"ciu\">\n\
                                    </div>\n\
                                    <div class=\"col-xs-3\">\n\
                                        <label for=\"txt_cod\">Pais</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"pais\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
                                <div class=\"row\">\n\
                                    <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Actividad Economica DIAN</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"dian\">\n\
                                    </div>\n\
                                      <div class=\"col-xs-4\">\n\
                                        <label for=\"txt_cod\">Actividad Economica ICA</label>\n\
                                        <input class=\"form-control\" type=\"text\" name=\"ica\">\n\
                                    </div>\n\
                                </div>&nbsp;\n\
";
    }
    document.getElementById("contenido").innerHTML = htmlcontent;
}

