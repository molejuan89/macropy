<%-- 
    Document   : MenuCRUD
    Created on : 7/07/2016, 09:52:41 PM
    Author     : Andres
--%>
<%
    String action = request.getParameter("action");
    String mensaje = request.getParameter("mensaje");
    String codigo = request.getParameter("codigo");
    String padre = request.getParameter("padre");
    String tipo = request.getParameter("tipo");
    String link = request.getParameter("link");
    String orden = request.getParameter("orden");
    String nivel = request.getParameter("nivel");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Gestion_Menu - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validate.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <!-- Campos de fecha -->
        <script src="js/date-fields.js"></script> 

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">
    </head>

    <body>
        <div class="row">
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
        </div>
        <div class="row">
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
        </div>
        <form id="login" name="login" role="form" method="post" action="<%=request.getContextPath()+ "/process"%>" onsubmit="return validarFormPerfil()">
            <input type="text" name="action" id="action" value="<%=action%>" hidden>
            <div class="row">
                <div class="col-xs-3"></div>
                <div class="col-xs-6">
                    <div class="container-fluid well">

                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_mensaje" class="control-label">Mensaje:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" id="txt_mensaje" name="txt_mensaje" onkeyup="validacion('txt_codigo')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_codigo" class="control-label">Codigo:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" id="txt_codigo" name="txt_codigo" onkeyup="validacion('txt_codigo')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="Tipo"  class="control-label">Tipo:</label>
                                    <div class="input-group-group">
                                        <input type="radio"  name="Tipo" id="Tipo" value="M">&nbsp;Menu &nbsp;&nbsp;
                                        <input type="radio" name="Tipo" id="Tipo" value="V">&nbsp;Vista 
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="txt_link"  class="control-label">Link:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" name="txt_link" class="form-control" id="txt_link" onkeyup="validacion('txt_descripcion')">
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_crearPerfil" name="btn_crearPerfil">Aceptar</button>
                    </div>

                </div>
                <div class="col-xs-3"></div>
            </div>
        </form>
    </body>
</html>

