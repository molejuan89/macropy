<%-- 
    Document   : perfil
    Created on : 5/07/2016, 11:41:28 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
        <title>Portal Hojas de Vida - Proservis</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validaciones.js"></script>  


        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="../../libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="../../libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <!-- Campos de fecha -->
        <script src="js/date-fields.js"></script> 

        <!-- Font style -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <!-- Cargar Listas de valores-->
        <script src="js/load-list.js"></script>

    </head>
    <body>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <div class="container-fluid well">
                    <form id="login" name="login" role="form" method="post" action="login">
                        <div class="form-group">
                            <label for="txt_user" class="control-label">Codigo:</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class="glyphicon " aria-hidden="true"></i></span>
                                <input type="text" class="form-control" id="txt_user" name="txt_user" onkeyup="validacion('txt_EmailLogin')">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt_database"  class="control-label">Descripción:</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class=" " aria-hidden="true"></i></span>
                                <input type="text" name="txt_database" class="form-control" id="txt_database" placeholder="Ingrese Base de datos" onkeyup="validacion('txt_contrasenaLogin');" >
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_login" name="btn_login">Aceptar</button>
                    </form>
                </div>
            </div>
            <div class="col-xs-4"></div>
        </div>
    </body>
</html>
