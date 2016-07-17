<%-- 
    Document   : ConsultaCC
    Created on : 16/07/2016, 11:02:57 AM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Consultar Desactivar Forma Pago - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validate.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    </head>
    <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-6">
                    <div><h1>Consultar/Desactivar</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-7">
        <div id="ParGrales" class="tab-pane fade in active">
            <div class="container-fluid ">
                <div class="row">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Descripcion</th>
                                <th>Nombre Corto</th>
                                <th>Estado</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>
                            <a href="#" style="color: red">
                                <span class="glyphicon glyphicon-ban-circle"></span>
                                <strong>Desactivar</strong>
                            </a>
                        </th>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
            </div>
            <div class="col-xs-2"></div>
        </div>
    </body>
</html>
