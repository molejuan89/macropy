<%-- 
    Document   : login
    Created on : 21/06/2016, 03:06:37 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title>login MCPY</title>
        <meta charset="utf-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script> 

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="js/enlace.js"></script> 
    </head>
    <body>
                <div class="container">  
                     <img src="images/LogoRealt.png"   width="200" height="75" align="left">
                </div>
        
        
        
        <div class="container-fluid">
            <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <form role="form" name="Login">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="txt_EmailLogin" placeholder="EJ: andres@hotmail.com">
                </div>
                <div class="form-group">
                    <label for="pwd">Contraseña:</label>
                    <input type="password" class="form-control" id="txt_ContraseñaLogin" placeholder="Ingrese Contraseña">
                </div>
                <div class="checkbox">
                    <label><input type="checkbox">Recordarme</label>
                </div>
                    <button type="submit" class="btn btn-default">Aceptar</button>
                </form>
            </div>
            <div class="col-xs-4"></div>
            </div>
        </div>
    </body>
</html>
