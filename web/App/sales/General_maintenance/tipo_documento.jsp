<%-- 
    Document   : document_type
    Created on : 12/07/2016, 12:41:46 AM
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
                <div class="col-xs-6">
                    <div><h1>Tipo Documento</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-6">
                <div class="container-fluid"> 
                            <div class=  "row  "> 
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group">
                                        <label for=  "txt_CodigoTD" class="cols-xs-6 control-label">Codigo:</label> 
                                        <div class="input-group-group" >
                                            <input class=  "form-control  " id =  "txt_CodigoTD  "  name =  "txt_CodigoTD  "   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese el Codigo">  
                                        </div>
                                    </div>
                                </div>
                                <div class=  "col-xs-6  "> 
                                    <div class="form-group"> 
                                        <label for=  "txt_descripcionTD" class="cols-xs-6 control-label">Descripcion:</label>  
                                        <div class="input-group-group" >
                                            <input class=  "form-control  " id =  "txt_descripcionTD  "  name =  "txt_descripcionTD  "   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese la Descripcion"> 
                                        </div> 
                                    </div>
                                </div>
                            </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "txt_NombreCortoTD" class="cols-xs-6 control-label">Nombre Corto:</label>
                                            <div class="input-group-group" >
                                                <input class=  "form-control  " id =  "txt_NombreCortoTD  "  name =  "txt_NombreCortoTD  "   type =  "text  " placeholder=  "EJ:   " data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre Corto">  
                                            </div>
                                        </div>
                                    </div>
                                    <div class=  "col-xs-6  ">
                                        <div class="form-group">
                                            <label for=  "rd_EstadoTD" class="cols-xs-6 control-label" data-toggle="tooltip" data-placement="top" title="Seleccione Para Activar o Desactivar">Estado:</label>
                                            <div class="input-group-group" >
                                                <input type="radio"  name="rd_EstadoTD" id="rd_EstadoTD" value="ACT">&nbsp;Activo &nbsp;&nbsp;
                                                <input type="radio" name="rd_EstadoTD" id="rd_EstadoTD" value="INA">&nbsp;Inactivo 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class=  "row  ">  
                                    <div class=  "col-xs-4  "></div> 
                                    <div class=  "col-xs-3  ">  
                                       <button type=  "button" id="btn_AceptarTD" class=  "btn btn-default form-control  ">Aceptar</button>&nbsp;&nbsp; 
                                    </div>  
                                    <div class=  "col-xs-4  "></div>   
                                </div> 
                            </div>
                        </div>
                        <div class="col-xs-3"></div>
                    </div>  
    </body>
</html>
