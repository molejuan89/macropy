<%-- 
    Document   : assign_profile
    Created on : 8/07/2016, 08:30:49 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
   <head> 
        <title>Assign Profile - MCPY</title>
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
       <br>
            <br>
            <div class="col-xs-1"></div>
            <div class="col-xs-3">
                <div><h1>Assign Profile</h1></div>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading"  >
                            <h4 class="panel-title" >
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"  style="color: blue"><strong>Perfiles</strong></a>
                            </h4>
                        </div>
                        <div id="collapse1" class="panel-collapse collapse collapse in">
                            <div class="panel-body">
                                <form id="InformacionPersonal" method="post"  action="#">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <a>AGiraldo</a><br>
                                            <a>ALopez</a><br>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
            </div>
            </div><br><br><br><br>
            <div class="col-xs-7" id="contenido">
                <div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe  src="<%=request.getContextPath()%>/App/profile/node_objects.jsp" id="actionMenu" name="actionMenu"></iframe>
                </div>
                <div class="row">
                        <div class="container-fluid">
                        <div class="col-xs-3"></div>
                        <div class="col-xs-3">
                            <button type="submit" class="btn btn-default center-block" id="btn_Asignar" name="btn_AsignarNodo">Asignar</button>
                        </div>
                        <div class="col-xs-3">
                            <button type="submit" class="btn btn-default center-block" id="btn_Desasignar" name="btn_DesasignarNodo">Desasignar</button>
                        </div>
                        <div class="col-xs-3"></div>
                        </div>
                    </div> 
            </div>
            </div>
    </body>
</html>
