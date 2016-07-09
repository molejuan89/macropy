<%-- 
    Document   : index
    Created on : 21/06/2016, 02:58:02 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Gestion de Usuarios MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script>
        
        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="../../libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="../../libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        
        <!-- Campos de fecha -->
        <script src="js/date-fields.js"></script>
        <script src="js/Fecha.js"></script>
        
        <!-- Div Contenidos -->
        <script src="js/div-contenidos.js"></script>

    </head>
    <body><br>
                <div class="container">  
                     <img src="images/LogoRealt.png"   width="200" height="75" align="left">
                 </div>
        <a onkeyup="fecha();"></a>
            <br>
            <div class="col-xs-1"></div>
            <div class="col-xs-3">
                            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"  style="color: red"><strong>Crear Usuarios</strong></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    <a href="javascript:contenido('Create_CI');" >Crear</a><br>
                                    <a href="javascript:contenido('Read/Disable_CI');" >Consultar</a><br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            
            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"  style="color: red"><strong>Acerca de</strong></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            </div>
            <div class="col-xs-7" id="contenido">

            </div>
    </body>
</html>
