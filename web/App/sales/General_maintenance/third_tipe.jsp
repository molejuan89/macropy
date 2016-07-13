<%-- 
    Document   : third_tipe
    Created on : 11/07/2016, 11:39:17 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Create Third - MCPY</title>
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

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">
    </head>
    <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-3">
                    <div><h1>Third Tipe</h1></div>
                </div>
                <div class="col-xs-8"></div>
            </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-4">
                <div class="container-fluid">
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="txt_LugarExpedicion">Codigo Sucursal</label>
                                    <input class="form-control" id ="txt_LugarExpedicion"  name ="txt_LugarExpedicion"   type ="text" placeholder="EJ: CALI">
                                </div>
                                <div class="col-xs-3">
                                    <label for="txt_LugarExpedicion">Codigo Sucursal</label>
                                    <input class="form-control" id ="txt_LugarExpedicion"  name ="txt_LugarExpedicion"   type ="text" placeholder="EJ: CALI">
                                </div>
                                <div class="col-xs-3">
                                    <label for="txt_LugarExpedicion">Codigo Sucursal</label>
                                    <input class="form-control" id ="txt_LugarExpedicion"  name ="txt_LugarExpedicion"   type ="text" placeholder="EJ: CALI">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="txt_LugarExpedicion">Codigo Sucursal</label>
                                    <input class="form-control" id ="txt_LugarExpedicion"  name ="txt_LugarExpedicion"   type ="text" placeholder="EJ: CALI">
                                </div>
                                <div class="col-xs-3">
                                    <label for="txt_LugarExpedicion">Codigo Sucursal</label>
                                    <input class="form-control" id ="txt_LugarExpedicion"  name ="txt_LugarExpedicion"   type ="text" placeholder="EJ: CALI">
                                </div>
                            </div>&nbsp;
                            <div class="row">
                                <div class="col-xs-3"></div>
                                <div class="col-xs-3">
                                   <button type="button" class="btn btn-danger form-control">Aceptar</button>&nbsp;&nbsp;
                                </div>
                                <div class="col-xs-3">
                                   <button type="button" class="btn btn-danger form-control">Modificar</button>
                                </div>
                                <div class="col-xs-3"></div>
                            </div>
        </div>
            </div>
            <div class="col-xs-4"></div>
        </div>

    </body>
</html>
