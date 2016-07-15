<%-- 
    Document   : Tercero
    Created on : 11/07/2016, 11:37:04 PM
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
                <div>
                    <h1>Create Third</h1>
                </div>
            </div>
            <div class="col-xs-8"></div>
        </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
                <div class="container-fluid">
                                    <div class="row">
                                    <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_TipoID" class="cols-xs-2 control-label">Tipo de Identificación:</label>	
                                    <div class="input-group-group">
                                        <select class="form-control" id ="cbx_TipoID" name ="cbx_TipoID" onchange="validacion('cbx_TipoID');" >
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                                    <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_NumeroId" class="cols-xs-2 control-label">Nro. de Identificación:</label>	
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-numero" name="txt_NumeroId"  id="txt_NumeroId"  placeholder="Número de Identificación" onkeyup="validacion('txt_NumeroId');" />
                                    </div>
                                </div>
                            </div>
                                </div>&nbsp;
                                <div class="row">
                                    <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Nombre" class="cols-xs-6 control-label">Nombres:</label>
                                    <div class="input-group-group" >
                                        <input type="text" class="form-control solo-letras" name="txt_Nombre" id="txt_Nombre"  placeholder="Ingrese su Nombre" onkeyup="validacion('txt_Nombre');" />   
                                    </div>
                                </div>
                            </div>
                                    <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Nombre" class="cols-xs-6 control-label">Razon Social:</label>
                                    <div class="input-group-group" >
                                        <input type="text" class="form-control solo-letras" name="txt_Nombre" id="txt_Nombre"  placeholder="Ingrese su Nombre" onkeyup="validacion('txt_Nombre');" />   
                                    </div>
                                </div>
                            </div>
                                    </div>&nbsp;
                                    <div class="row">
                                    <div class="col-xs-6">
                                            <div class="form-group">
                                                <label for="txt_DireccionResidencia" class="cols-xs-2 control-label">Dirección:</label>
                                                <div class="input-group-group">
                                                    <input class="form-control" id ="txt_DireccionResidencia"   name ="txt_DireccionResidencia"   type ="text"  placeholder="EJ: CALLE 73I # 4N53" onkeyup="validacion('txt_FechaExpedicion');">
                                                </div>
                                            </div>
                                        </div>
                                    <div class="col-xs-6">
                                            <div class="form-group">
                                                <label for="txt_NumeroFijo" class="cols-xs-2 control-label">Telefono:</label>
                                                <div class="input-group-group">
                                                    <input class="form-control solo-numero" id ="txt_NumeroFijo"   name ="txt_NumeroFijo"   type ="text"  placeholder="EJ: 380 86 66 " onkeyup="validacion('txt_FechaExpedicion');">
                                                </div>
                                            </div>
                                        </div>
                                    </div>&nbsp;
                                    <div class= "row ">
                                    <div class="col-xs-6">
                                            <div class="form-group">
                                                <label for="txt_NumeroFijo" class="cols-xs-2 control-label">Fax:</label>
                                                <div class="input-group-group">
                                                    <input class="form-control solo-numero" id ="txt_NumeroFijo"   name ="txt_NumeroFijo"   type ="text"  placeholder="EJ: 380 86 66 " onkeyup="validacion('txt_FechaExpedicion');">
                                                </div>
                                            </div>
                                        </div>
                                    <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Email" class="cols-xs-2 control-label">Correo Electrónico:</label>	
                                    <div class="input-group-group">
                                        <input type="email" class="form-control" name="txt_Email" id="txt_Email"  placeholder="Ej: juan.perez@proservis.com.co" onkeyup="validacion('txt_Email');" />
                                    </div>  
                                </div>
                            </div>
                                </div>&nbsp;
                                <div class= "row ">
                                        <div class= "col-xs-12">
                                            <div class="form-group">
                                        <label for= "txt_cod " class="control-label" data-toggle="tooltip" data-placement="top" title="Seleccione la Opcion de Administracion">Tipo</label>
                                        <div class="input-group-group">
                                            <input type="radio" id= "ra_Proveedor " name= "optradio ">&nbsp;Proveedor&nbsp;&nbsp;
                                            <input type="radio" id= "ra_cliente " name= "optradio ">&nbsp;Cliente&nbsp;&nbsp;
                                            <input type="radio" id= "ra_Empleado " name= "optradio ">&nbsp;Empleado&nbsp;&nbsp;
                                            <input type="radio" id= "ra_Otro " name= "optradio ">&nbsp;Otro&nbsp;&nbsp;
                                            <input type="radio" id= "ra_Alumno " name= "optradio ">&nbsp;Alumno&nbsp;&nbsp;
                                            <input type="radio" id= "ra_Socio " name= "optradio ">&nbsp;Socio
                                        </div>
                                        </div>
                                        </div>
                                    
                             </div>&nbsp;
                                <div class= "row ">
                                    <div class="col-xs-6" >
                                            <div class="form-group">
                                                <label for="txt_LugarExp" class="cols-xs-2 control-label">Lugar:</label>
                                                <div class="input-group-group">
                                                    <select name="cbo_LugarExp" id="cbo_LugarExp" class="form-control select2" >
                                                        <option value=''>Seleccione..</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                </div>&nbsp;
                                <div class= "row ">
                                    <div class="col-xs-6">
                                            <div class="form-group">
                                                <label for="txt_DireccionResidencia" class="cols-xs-2 control-label">Actividad Economica DIAN:</label>
                                                <div class="input-group-group">
                                                    <select id ="cbo_Profesion" name="cbo_Profesion" class="form-control select2">
                                                        <option value ="">Seleccione..</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    <div class="col-xs-6">
                                            <div class="form-group">
                                                <label for="txt_DireccionResidencia" class="cols-xs-2 control-label">Actividad Economica ICA:</label>
                                                <div class="input-group-group">
                                                    <select id ="cbo_Profesion" name="cbo_Profesion" class="form-control select2">
                                                        <option value ="">Seleccione..</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                </div>&nbsp;
                                     <div class= "row ">
                                <div class= "col-xs-3 "></div>
                                <div class= "col-xs-3 ">
                                   <button type= "button " class= "btn btn-danger form-control ">Aceptar</button>&nbsp;&nbsp;
                                </div>
                                <div class= "col-xs-3 ">
                                   <button type= "button " class= "btn btn-danger form-control ">Modificar</button>
                                </div>
                                <div class= "col-xs-3 "></div>
                            </div>
                      
        </div>
                
                
            </div>
            <div class="col-xs-2"></div>
        </div>
                           

    </body>
</html>
