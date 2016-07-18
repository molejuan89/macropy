<%-- 
    Document   : way_pay
    Created on : 11/07/2016, 11:38:04 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head> 
        <title>Forma Pago - MCPY</title>
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
                    <div><h1>Forma de Pago</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
        <form id="formaPago" name="formaPago" role="form" method="post" action="" onsubmit="return validarFormFP()">
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-6">
                <div class="container-fluid"> 
                            <div class=  "row  "> 
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group">
                                        <label for=  "txt_CodigoFP" class="cols-xs-6 control-label">Codigo:</label> 
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_CodigoFP"  name =  "txt_CodigoFP"   type =  "text  " placeholder=  "EJ: CHxx   " data-toggle="tooltip" data-placement="top" title="Ingrese el Codigo">  
                                        </div>
                                    </div>
                                </div>
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group"> 
                                        <label for=  "txt_descripcionFP" class="cols-xs-6 control-label">Descripcion:</label>  
                                        <div class="input-group-group" >
                                            <input class=  "form-control" id =  "txt_descripcionFP"  name =  "txt_descripcionFP  "   type =  "text  " placeholder=  "EJ: CHEQUE   " data-toggle="tooltip" data-placement="top" title="Ingrese la Descripcion"> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "txt_NombreCortoFP" class="cols-xs-6 control-label">Nombre Corto:</label>
                                            <div class="input-group-group" >
                                                <input class=  "form-control" id =  "txt_NombreCortoFP"  name =  "txt_NombreCortoFP  "   type =  "text  " placeholder=  "EJ: CH  " data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre Corto">  
                                            </div>
                                        </div>
                                    </div>
                                    <!--<div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "rd_EstadoFP" class="cols-xs-6 control-label" data-toggle="tooltip" data-placement="top" title="Seleccione Para Activar o Desactivar">Estado:</label>
                                            <div class="input-group-group" >
                                                 <input type="radio"  name="rd_EstadoFP" id="rd_EstadoFP" value="ACT">&nbsp;Activo &nbsp;&nbsp;
                                                        <input type="radio" name="rd_EstadoFP" id="rd_EstadoFP" value="INA">&nbsp;Inactivo 
                                            </div>
                                        </div>
                                    </div>-->
                                </div>&nbsp;
                                <div class=  "row  ">  
                                    <div class=  "col-xs-4  "></div> 
                                    <div class=  "col-xs-3  ">  
                                       <button type=  "submit" id="btn_AceptarFP" class=  "btn btn-default form-control  ">Aceptar</button>&nbsp;&nbsp; 
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
