<%-- 
    Document   : Tercero
    Created on : 11/07/2016, 11:37:04 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>Crear Tecero - MCPY</title>
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
        
                <!-- Select2: (css) filtro en combox-->
        <link rel="stylesheet" href="<%=request.getContextPath()%>libs/com.github/select2/3.5.3/css/select2.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>libs/com.github/select2/3.5.3/css/select2-bootstrap.css ">
        <link rel="stylesheet" href="<%=request.getContextPath()%>libs/com.github/select2/3.5.3/css/gh-pages.css">

       
    </head>
    <body>
        <div class="row">
            <div class="col-xs-1"></div>
            <div class="col-xs-3">
                <div>
                    <h1>Crear Tercero</h1>
                </div>
            </div>
            <div class="col-xs-8"></div>
        </div>
        <form id="regTercero" name="regTercero" role="form" method="post" action="" onsubmit="return validarForm()">
        <div class="row">
            <div class="col-xs-3"></div>
            <div class="col-xs-7">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="cbx_TipoID" class="cols-xs-2 control-label">Tipo de Identificación:</label>	
                                <div class="input-group-group">
                                    <select class="form-control" id ="cbx_TipoID" name ="cbx_TipoID" onchange="validacion('cbx_TipoID');"data-toggle="tooltip" data-placement="top" title="Seleccione Tipo de Identificación">
                                        <option value ="">Seleccione..</option> 
                                    </select>   
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_NumeroId" class="cols-xs-2 control-label">Nro. de Identificación:</label>	
                                <div class="input-group-group">
                                    <input type="text" class="form-control solo-numero" name="txt_NumeroId"  id="txt_NumeroId"  placeholder="EJ:" onkeyup="validacion('txt_NumeroId');" data-toggle="tooltip" data-placement="top" title="Ingrese el numero de Identificación"/>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                            <label for="txt_Nombre" class="cols-xs-6 control-label">Nombres:</label>
                                <div class="input-group-group" >
                                    <input type="text" class="form-control" name="txt_Nombre" id="txt_Nombre"  placeholder="EJ:" onkeyup="validacion('txt_Nombre');" data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre (s)"/>   
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_RazonSocial" class="cols-xs-6 control-label">Razon Social:</label>
                                <div class="input-group-group" >
                                    <input type="text" class="form-control" name="txt_RazonSocial" id="txt_RazonSocial"  placeholder="EJ:" onkeyup="validacion('txt_RazonSocial');" data-toggle="tooltip" data-placement="top" title="Ingrese la Razon Social"/>   
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_Direccion" class="cols-xs-2 control-label">Dirección:</label>
                                <div class="input-group-group">
                                    <input class="form-control" id ="txt_Direccion"   name ="txt_Direccion"   type ="text"  placeholder="EJ: CALLE 73I # 4N53" onkeyup="validacion('txt_Direccion');" data-toggle="tooltip" data-placement="top" title="Ingrese la Dirección">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">                                              
                                <label for="txt_telefono" class="cols-xs-2 control-label">Teléfono:</label>
                                <div class="input-group-group">
                                    <input class="form-control solo-numero" id ="txt_telefono"   name ="txt_telefono"   type ="text"  placeholder="EJ: 380 86 66 " onkeyup="validacion('txt_telefono');" data-toggle="tooltip" data-placement="top" title="Ingrese el Telefono">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class= "row ">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_Email" class="cols-xs-2 control-label">Correo Electrónico:</label>	
                                <div class="input-group-group">
                                    <input type="email" class="form-control" name="txt_Email" id="txt_Email"  placeholder="Ej: juan.perez@proservis.com.co" onkeyup="validacion('txt_Email');" data-toggle="tooltip" data-placement="top" title="Ingrese el Correo Electrónico"/>
                                </div>  
                            </div>
                        </div>
                        <div class="col-xs-6" >
                                <div class="form-group">
                                    <label for="cbx_Lugar" class="cols-xs-2 control-label">Lugar:</label>
                                    <div class="input-group-group">
                                        <select name="cbx_Lugar" id="cbx_Lugar" class="form-control select2" onkeyup="validacion('cbx_Lugar');" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar">
                                            <option value=''>Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class= "row ">
                        <div class="col-xs-6" >
                                <div class="form-group">
                                    <label for="cbx_Tipo" class="cols-xs-2 control-label">Tipo de Tercero:</label>
                                    <div class="input-group-group">
                                        <select name="cbx_Tipo" id="cbx_Tipo" class="form-control select2" onkeyup="validacion('cbx_Tipo');" data-toggle="tooltip" data-placement="top" title="Seleccione el Tipo de Tercero">
                                            <option value=''>Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class= "row ">
                        <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_Dian" class="cols-xs-2 control-label">Actividad Economica DIAN:</label>
                                    <div class="input-group-group">
                                        <select id ="cbx_Dian" name="cbx_Dian" class="form-control select2" onkeyup="validacion('cbx_Dian');" data-toggle="tooltip" data-placement="top" title="Seleccione la Actividad">
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_Ica" class="cols-xs-2 control-label">Actividad Economica ICA:</label>
                                    <div class="input-group-group">
                                        <select id ="cbx_Ica" name="cbx_Ica" class="form-control select2" onkeyup="validacion('cbx_Ica');" data-toggle="tooltip" data-placement="top" title="Seleccione la Actividad">
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="form-group">
                                <label for="txt_Observacion" class="cols-xs-2 control-label">Observacion:</label>	
                                <div class="input-group-group">
                                    <input type="email" class="form-control" name="txt_Observacion" id="txt_Observacion" onkeyup="validacion('txt_Observacion');"  placeholder="Ej: " data-toggle="tooltip" data-placement="top" title="Ingrese las Observaciones que tenga Sobre el Tercero"/>
                                </div>  
                            </div>
                        </div>
                    </div>&nbsp;
                  
                    <div class= "row ">
                        <div class= "col-xs-5 "></div>
                        <div class= "col-xs-2 ">
                            <button type= "button " class= "btn btn-default form-control " id="btn_AceptarTer">Aceptar</button>&nbsp;&nbsp;
                        </div>
                        <div class= "col-xs-5 "></div>
                    </div>           
                </div>
            </div>
            <div class="col-xs-2"></div>
        </div>
        </form>
    </body>
</html>