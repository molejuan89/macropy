<%-- 
    Document   : CreateCE
    Created on : 11/07/2016, 11:35:43 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head> 
        <title>Create CE - MCPY</title>
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
                <div class="col-xs-5">
                    <div><h1>Crear Comprobante Egreso</h1></div>
                </div>
                <div class="col-xs-6"></div>
            </div>
            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-7">
                    <div class="container-fluid well">
                        <div class="row">
                                <div class="col-xs-6" >
                                    <div class="form-group">
                                        <label for="txt_ref1" class="cols-xs-2 control-label">Referencia 1:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_ref1"  name="txt_ref1" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6" >
                                    <div class="form-group">
                                        <label for="txt_ref2" class="cols-xs-2 control-label">Referencia 2:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_ref2"  name="txt_ref2" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
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
                            <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="txt_fecha" class="cols-xs-2 control-label">Fecha:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_fecha"  name="txt_fecha" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                            </div> 
                        </div>
                        <div class="row">
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="txt_pagado" class="cols-xs-2 control-label">Pagado a:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_pagado"  name="txt_pagado" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                                </div>
                            <div class="col-xs-6" >
                                    <div class="form-group">
                                        <label for="cbx_tercero" class="cols-xs-2 control-label">Tercero:</label>
                                        <div class="input-group-group">
                                            <select name="cbx_tercero" id="cbx_tercero" class="form-control select2" >
                                                <option value=''>Seleccione..</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="txt_FechaExpedicion" class="cols-xs-2 control-label">Dirección:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_FechaExpedicion"  name="txt_FechaExpedicion" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="txt_FechaExpedicion" class="cols-xs-2 control-label">Concepto:</label>
                                        <div class="input-group-group">
                                            <input class="form-control datepicker" id="txt_FechaExpedicion"  name="txt_FechaExpedicion" type="text" placeholder="EJ: 1993-12-22" onkeyup="validacion('txt_FechaExpedicion');">
                                        </div>
                                    </div>
                                </div>
                        </div>
                                <div class="row">
                                
                                    <div class="col-xs-6">
                                            <label for="txt_FechaRetiro">Fecha:</label><br>
                                            <input id ="txt_FechaRetiro"  class="form-control"  name="txt_FechaRetiro" type="text" placeholder="EJ: 2016-06-24">
                                    </div>
                                </div>&nbsp;
                                                        <div class="row">
                                                        <div class="col-xs-6">
                                                                <label for="txt_ValorNumericoCIngreso">Valor Numérico:</label><br>
                                                                <input id ="txt_ValorNumericoCIngreso"  class="form-control" name ="txt_ValorNumericoCIngreso" type="text" placeholder="EJ: $100000"/>
                                                        </div>
                                                        <div class="col-xs-6">
                                                                <label for="txt_ValorLetrasCIngreso">Valor en Letras:</label><br>
                                                                <input id ="txt_ValorLetrasCIngreso"  class="form-control" name="txt_ValorLetrasCIngreso" type="text" placeholder="EJ: CIEN MIL PESOS MCTE">
                                                        </div>
                                                        </div>&nbsp;
                                                        <div class="row">
                                                        <div class="col-xs-6">
                                                                <form role="form">
                                                                    <label for="txt_EstadoCivil">Forma de Pago:</label><br>
                                                                    <input type="radio" id="ra_Cheque" name="optradio">Cheque &nbsp;
                                                                    <input type="radio" id="ra_Efectivo" name="optradio">Efectivo &nbsp;
                                                                </form>
                                                        </div>n
                                                        </div>&nbsp;
                                                        <div class="row">
                                                        <div class="col-xs-6">
                                                                <label for="txt_CuentaCIngreso">Cuenta:</label><br>
                                                                <input id ="txt_CuentaCIngreso"  class="form-control" name ="txt_CuentaCIngreso" type="text" placeholder="EJ: $1105"/>
                                                        </div>
                                                        <div class="col-xs-6">
                                                                <label for="txt_DetalleCIngreso">Detalle:</label><br>
                                                                <input id ="txt_DetalleCIngreso"  class="form-control" name="txt_DetalleCIngreso" type="text" placeholder="EJ: BANCOS"
                                                        </div>
                                                        </div>&nbsp;
                                                        <div class="row">
                                                        <div class="col-xs-4">
                                                                <label for="txt_CuentaCIngreso">Elaborado por:</label><br>
                                                                <input id ="txt_CuentaCIngreso"  class="form-control" name ="txt_CuentaCIngreso" type="text" placeholder="EJ: ANDRES LOPEZ"/>
                                                        </div>
                                                        <div class="col-xs-4">
                                                                <label for="txt_DetalleCIngreso">Aprobado por:</label><br>
                                                                <input id ="txt_DetalleCIngreso"  class="form-control" name="txt_DetalleCIngreso" type="text" placeholder="EJ: JUAN GUERRERO">
                                                        </div>
                                                        <div class="col-xs-4">
                                                                <label for="txt_DetalleCIngreso">Contabilizado por:</label><br>
                                                                <input id ="txt_DetalleCIngreso"  class="form-control" name="txt_DetalleCIngreso" type="text" placeholder="EJ: KAREN RAMIREZ">
                                                        </div>
                                                        </div>&nbsp;
                                                        <div class="row">
                                                            <div class="col-xs-4">
                                                                <button id="Aceptar" type="button" class="btn btn-danger ">Aceptar</button>
                                                            </div>
                                                            <div class="col-xs-4">
                                                        <button id="Actualizar" type="button" class="btn btn-danger ">Actualizar</button>
                                                            </divn
                                                        <div class="col-xs-4">
                                                       <button id="Imprimir" type="button" class="btn btn-danger ">Imprimir</button>
                                                        </div>
                                                        </div>
                                                    </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-2"></div>
                                         </div>
    </body>
</html>
