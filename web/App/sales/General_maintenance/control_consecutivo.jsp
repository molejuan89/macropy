<%-- 
    Document   : control_consecutive
    Created on : 12/07/2016, 12:54:15 AM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Control Consecutive - MCPY</title>
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
                    <div><h1>Control Consecutivo</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
            <form id="regTercero" name="regTercero" role="form" method="post" action="" onsubmit="return validarFormCC()">
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-6">
                <div class="container-fluid"> 
                            <div class=  "row  "> 
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group">
                                        <label for=  "txt_CodigoCC" class="cols-xs-6 control-label">Codigo:</label> 
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_CodigoCC"  name =  "txt_CodigoCC" onkeyup="validacion('txt_CodigoCC');"   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese el Codigo">  
                                        </div>
                                    </div>
                                </div>
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group"> 
                                        <label for=  "txt_descripcionCC" class="cols-xs-6 control-label">Descripcion:</label>  
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_descripcionCC"  name =  "txt_descripcionCC" onkeyup="validacion('txt_descripcionCC');"   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese la Descripcion"> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "txt_NombreCortoCC" class="cols-xs-6 control-label">Nombre Corto:</label>
                                            <div class="input-group-group" >
                                                <input class=  "form-control" id =  "txt_NombreCortoCC"  name =  "txt_NombreCortoCC" onkeyup="validacion('txt_NombreCortoCC');"   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre Corto">  
                                            </div>
                                        </div>
                                    </div>
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "rd_EstadoCC" class="cols-xs-6 control-label" data-toggle="tooltip" data-placement="top" title="Seleccione Para Activar o Desactivar">Estado:</label>
                                            <div class="input-group-group" >
                                                 <input type="radio"  name="rd_EstadoCC" id="rd_EstadoCC" value="ACT">&nbsp;Activo &nbsp;&nbsp;
                                                        <input type="radio" name="rd_EstadoCC" id="rd_EstadoCC" value="INA">&nbsp;Inactivo 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-4  "></div> 
                                    <div class=  "col-xs-3  ">  
                                       <button type=  "button" id="btn_AceptarCC" class=  "btn btn-default form-control  ">Aceptar</button>&nbsp;&nbsp; 
                                    </div>  
                                    <div class=  "col-xs-4  "></div>   
                                </div> 
                            </div>
                        </div>
                        <div class="col-xs-3"></div>
                    </div>  
            </form>
    </body>
</html>
