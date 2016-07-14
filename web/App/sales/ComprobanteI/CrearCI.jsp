<%-- 
    Document   : CreateCI
    Created on : 11/07/2016, 11:35:19 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head> 
        <title>Create CI - MCPY</title>
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
                    <div><h1>Create Profile</h1></div>
                </div>
                <div class="col-xs-8"></div>
            </div>
                    <div class="row">
                    <div class="col-xs-2"></div>
                    <div class="col-xs-8">
                        <div class="container-fluid well">
                        <div class="row">
                                    <div class="col-xs-3"></div>
                                    </div>
                                <div class="row">
                                    <div class="col-xs-6">
                                        <label for="txt_lugarCIngreso">Lugar:</label>
                                        <input class="form-control" id ="txt_lugarCIngreso"  name ="txt_lugarCIngreso"   type ="text" placeholder="EJ: CALI">
                                    </div>
                                    <div class="col-xs-6">
                                        <label for="txt_FechaCIngreso">Fecha:</label>
                                        <input class="form-control" id="txt_FechaCIngreso"  name="txt_FechaCIngreso" type="text" placeholder="EJ: 1993-12-22">
                                    </div>
                                    </div>&nbsp;
                                    <div class="row">
                                    <div class="col-xs-6">
                                        <label for="txt_RecibidoDe">Recibido de:</label>
                                        <input class="form-control" id ="txt_RecibidoDe" name ="txt_RecibidoDe"   type ="text" placeholder="EJ: JUAN PEREZ">
                                    </div>
                                    <div class= "col-xs-6">
                                        <label for="txt_DireccionCIngreso">Direccion:</label>
                                        <input class="form-control" id="txt_DireccionCIngreso" name="txt_DireccionCIngreso" type="text" placeholder="EJ: CALLE 69 # 7 M BIS 40">
                                    </div>
                                    </div>&nbsp;
                                <div class="row">
                                        <div class="col-xs-6">
                                                <label for="txt_ConceptoCIngreso">Concepto:</label><br>
                                                <input id ="txt_ConceptoCIngreso"  class="form-control" name ="txt_ConceptoCIngreso" type="text" placeholder="EJ: VENTA MATERIALES"/>
                                        </div>
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
                                        </div>
                                        </div>&nbsp;
                                        <div class="row">
                                        <div class="col-xs-6">
                                                <label for="txt_CuentaCIngreso">Cuenta:</label><br>
                                                <input id ="txt_CuentaCIngreso"  class="form-control" name ="txt_CuentaCIngreso" type="text" placeholder="EJ: $1105"/>
                                        </div>
                                        <div class="col-xs-6">
                                                <label for="txt_DetalleCIngreso">Detalle:</label><br>
                                                <input id ="txt_DetalleCIngreso"  class="form-control" name="txt_DetalleCIngreso" type="text" placeholder="EJ: BANCOS">
                                        </div>
                                        </div>&nbsp;
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <button id="Aceptar" type="button" class="btn btn-danger ">Aceptar</button>
                                            </div>
                                            <div class="col-xs-4">
                                        <button id="Actualizar" type="button" class="btn btn-danger ">Actualizar</button>
                                            </div>
                                        <div class="col-xs-4">
                                       <button id="Imprimir" type="button" class="btn btn-danger ">Imprimir</button>
                                        </div>
                                        </div>
                                    </div>
                    </div>
                    </div>

        
    </body>
</html>
