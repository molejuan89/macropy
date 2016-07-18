<%-- 
    Document   : third_tipe
    Created on : 11/07/2016, 11:39:17 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Tipo Tercero - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="../js/validate.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    </head>
        <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-6">
                    <div><h1>Tipo Tercero</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
            <form id="tipoTer" name="tipoTer" role="form" method="post" action="" onsubmit="return validarFormTT()">
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-6">
                <div class="container-fluid"> 
                            <div class=  "row  "> 
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group">
                                        <label for=  "txt_CodigoTT" class="cols-xs-6 control-label">Codigo:</label> 
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_CodigoTT"  name =  "txt_CodigoTT"   type =  "text  " placeholder=  "EJ: PRxxx   " data-toggle="tooltip" data-placement="top" title="Ingrese el Codigo">  
                                        </div>
                                    </div>
                                </div>
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group"> 
                                        <label for=  "txt_descripcionTT" class="cols-xs-6 control-label">Descripcion:</label>  
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_descripcionTT"  name =  "txt_descripcionTT"   type =  "text  " placeholder=  "EJ: PROVEEDOR   " data-toggle="tooltip" data-placement="top" title="Ingrese la Descripcion"> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "txt_NombreCortoTT" class="cols-xs-6 control-label">Nombre Corto:</label>
                                            <div class="input-group-group" >
                                                <input class=  "form-control" id =  "txt_NombreCortoTT"  name =  "txt_NombreCortoTT"   type =  "text  " placeholder=  "EJ: PR  " data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre Corto">  
                                            </div>
                                        </div>
                                    </div>
                                    <!--<div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "rd_EstadoTT" class="cols-xs-6 control-label" data-toggle="tooltip" data-placement="top" title="Seleccione Para Activar o Desactivar">Estado:</label>
                                            <div class="input-group-group" >
                                                <input type="radio"  name="rd_EstadoTT" id="rd_EstadoTT" value="ACT">&nbsp;Activo &nbsp;&nbsp;
                                                <input type="radio" name="rd_EstadoTT" id="rd_EstadoTT" value="INA">&nbsp;Inactivo 
                                            </div>
                                        </div>
                                    </div>-->
                                </div>&nbsp;
                                <div class=  "row  ">  
                                    <div class=  "col-xs-4  "></div> 
                                    <div class=  "col-xs-3  ">  
                                       <button type=  "submit" id="btn_AceptarTT" class=  "btn btn-default form-control  ">Aceptar</button>&nbsp;&nbsp; 
                                    </div>  
                                    <div class=  "col-xs-3  "></div>   
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-3"></div>
                    </div>  
            </form>
    </body>
</html>
