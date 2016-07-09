<%-- 
    Document   : node_objects
    Created on : 8/07/2016, 08:53:16 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Acces Menu - MCPY</title>
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
        <div class="container">
              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#Menu">Menu</a></li>
                <li><a data-toggle="tab" href="#Acceso">Acceso</a></li>
              </ul>
              <div class="tab-content">
                <div id="Menu" class="tab-pane fade in active">
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-4">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Usuario</th>
                                            <th>Perfil</th>
                                        </tr>
                                    </thead>
                                        <tbody>
                                            <tr>
                                                <td>ALopez</td>
                                                <td>AGiraldo</td>
                                            </tr>
                                        </tbody>
                                </table>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container-fluid">
                        <div class="col-xs-3"></div>
                        <div class="col-xs-3">
                            <button type="submit" class="btn btn-default center-block" id="btn_Asignar" name="btn_AsignarMenu">Asignar</button>
                        </div>
                        <div class="col-xs-3">
                            <button type="submit" class="btn btn-default center-block" id="btn_Desasignar" name="btn_DesasignarMenu">Desasignar</button>
                        </div>
                        <div class="col-xs-3"></div>
                        </div>
                    </div> 
                </div>
                <div id="Acceso" class="tab-pane fade">
                 <div class="container-fluid ">
                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-4">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Usuario</th>
                                            <th>Perfil</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>ALopez</td>
                                            <td>AGiraldo</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>
                        <div class="row">
                            <div class="container-fluid">
                            <div class="col-xs-3"></div>
                            <div class="col-xs-3">
                                <button type="submit" class="btn btn-default center-block" id="btn_CrearNodo" name="btn_AsignarAcceso">Asignar</button>
                            </div>
                            <div class="col-xs-3">
                                <button type="submit" class="btn btn-default center-block" id="btn_CrearNodo" name="btn_DesasignarAcceso">Desasignar</button>
                            </div>
                            <div class="col-xs-3"></div>
                            </div>
                        </div>
                </div>  
                </div>
              </div>
            </div>
    </body>
</html>