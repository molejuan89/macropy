<%-- 
    Document   : ConfirmacionCorreo
    Created on : 24/06/2016, 02:40:01 PM
    Author     : SoporteSRH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //request.setAttribute("type", "success");
    //request.setAttribute("tittle", "Titulo");
    //request.setAttribute("message", "El mensaje de prueba.");
%>
<html lang="es">
    <head> 
        <title>Portal Hojas de Vida - Proservis</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validate.js"></script>  


        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Font style -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <!-- Cargar Listas de valores-->
        <script src="js/load-list.js"></script>

    </head>
    <body>
        <br><br><br><br>
        <div class="row">
            <div class="col-xs-5"></div>
            <div class="col-xs-2">
                <div class="container"> 
                    <img src="http://www.proservis.com.co/images/logo_proservis.png"   width="200" height="75">         
                </div>
            </div>
            <div class="col-xs-2"></div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <div class="container-fluid well">
                    <div class="bg-<%=request.getSession().getAttribute("type")%> h3 text-center">
                        <%=request.getSession().getAttribute("tittle")%> 
                    </div>
                    <br>
                    <div class="h5 text-justify">
                        <%=request.getSession().getAttribute("message")%>
                    </div>
                    <br>
                    <div class="center-block">
                        <a href="<%=request.getSession().getAttribute("link-btn")%>" class="btn btn-<%=request.getSession().getAttribute("type")%> center-block" role="button"><%=request.getSession().getAttribute("txt-btn")%></a>
                    </div>
                </div>
            </div>
            <div class="col-xs-4" ></div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <h6>
                    <span class="label label-success" style="font-size: 15"> Portal Hojas de Vida | Queryx – Copyright ©2016 Proservis  Desarrollado por: <strong>Innovacion y Desarrollo</strong></span>
                </h6>
            </div>
            <div class="col-xs-4"></div>
        </div>
    </body>
</html>
