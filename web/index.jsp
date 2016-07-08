<%-- 
    Document   : login
    Created on : 21/06/2016, 03:06:37 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>login MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validaciones.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Font style -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

    </head>
    <body>
        <div class="container">  
            <img src="images/LogoRealt.png"   width="200" height="75" align="left">
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <div class="container-fluid well">
                    <form id="login" name="login" role="form" method="post" action="process">
                        <input type="text" name="action" id="action" value="access" hidden>
                        <div class="form-group">
                            <label for="txt_user" class="control-label">Username:</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" id="txt_user" name="txt_user" onkeyup="validacion('txt_EmailLogin')">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt_pass"  class="control-label">Contraseña:</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock" aria-hidden="true"></i></span>
                                <input type="password" name="txt_pass" class="form-control" id="txt_pass" placeholder="Ingrese Contraseña" onkeyup="validacion('txt_contrasenaLogin');" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="txt_database"  class="control-label">Base de datos:</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class="fa fa-database" aria-hidden="true"></i></span>
                                <input type="text" name="txt_database" class="form-control" id="txt_database" placeholder="Ingrese Base de datos" onkeyup="validacion('txt_contrasenaLogin');" >
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_login" name="btn_login">Ingresar</button>
                    </form>
                </div>
            </div>
            <div class="col-xs-4"></div>
        </div>
    </body>
</html>
