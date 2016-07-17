<%-- 
    Document   : ConsultaCE
    Created on : 13/07/2016, 08:36:12 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>Consultar Anular CE - MCPY</title>
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
        
        <script src="js/validate.js"></script> 

    </head>
    <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-5">
                <%--   <div class="h4 col-xs-12" align='center'><%=nTitle%></div>--%>
                    <div><h1>Consultar/Anular Comprobante</h1></div>
                </div>
                <div class="col-xs-6"></div>
            </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
        <div id="Nodos" class="tab-pane fade in active">
            <div class="container-fluid ">
                <div class="row">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Consecutivo</th>
                                <th>Valor</th>
                                <th>Contabilizado por</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>
                            <a href="#" style="color: red">
                                <span class="glyphicon glyphicon-remove"></span>
                                <strong>Anular</strong>
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
