<%-- 
    Document   : perfil
    Created on : 5/07/2016, 11:41:28 PM
    Author     : Andres
--%>
<%
    String action = request.getParameter("action");
    String codigo = request.getParameter("codigo");
    String descripcion = request.getParameter("descripcion");
    String admin = request.getParameter("admin");
    String nTitle = "";    

    if (action.equals("profile-add")) {
        nTitle = "Agregar perfil";
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>Create Profile - MCPY</title>
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
        <form id="menu" name="menu" role="form" method="post" action="<%=request.getContextPath() + "/process"%>" onsubmit="return validarFormPerfil()">
            <input type="text" name="action" id="action" value="<%=action%>" hidden>
            <input type="text" name="codigo" id="codigo" value="<%=codigo%>" hidden>
            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <div class="row">
                        <div class="h5 col-xs-12" align='center'><%=nTitle%></div>
                    </div>
                </div>
                <div class="col-xs-4"></div>
            </div>
            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <div class="container-fluid well">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="descripcion"  class="control-label">Descripción:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" name="descripcion" class="form-control" id="descripcion" onkeyup="validacion('txt_descripcion')">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label for="admin">Admin Option:</label>
                                        <div class="input-group-group">
                                            <input type="radio"  name="admin" id="admin" value="Y">&nbsp;Si &nbsp;&nbsp;
                                            <input type="radio" name="admin" id="admin" value="N" checked>&nbsp;No 
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button id="btn_CrearPerfil" type="submit" class="btn btn-default center-block ">Aceptar</button>
                    </div>
                </div>
                <div class="col-xs-4"></div>
            </div>&nbsp;
            <div class="row">
                <div class="col-xs-4"></div>
                <div class="col-xs-4">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Codigo</th>
                                <th>Descripcion</th>
                                <th>Admin Option</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td> </td>
                                <td> </td>
                                <td></td>
                                <td> </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="col-xs-4"></div>
            </div>                          
        </form>
    </body>
</html>
