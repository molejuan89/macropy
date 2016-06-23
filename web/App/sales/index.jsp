<%-- 
    Document   : index
    Created on : 21/06/2016, 02:58:02 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gestion de la Venta MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script>
        
        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="../../libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="../../libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
        
        <!-- Campos de fecha -->
        <script src="js/date-fields.js"></script> 
        <script src="js/div-contenidos.js"></script>
        <script src="js/Fecha.js"></script> 
        
    </head>
    <body><br>
                <div class="container">  
                     <img src="images/LogoRealt.png"   width="200" height="75" align="left">
                 </div>
            <br>
            <div class="col-xs-1"></div>
            <div class="col-xs-3">
                            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"  style="color: red"><strong>Comprobante de Ingreso</strong></a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    <a href="javascript:contenido('Comprobante_Ingreso');" >Crear</a><br>
                                    Consultar<br>
                                    Desactivar<br>
                                    Actutalizar<br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2"  style="color: red"><strong>Comprobante de Egreso</strong></a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    Crear<br>
                                    Consultar<br>
                                    Desactivar<br>
                                    Actutalizar<br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>                            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3"  style="color: red"><strong>Informes</strong></a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    Comprobante Diario Parcial<br>
                                    Comprobante Diario Final<br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4"  style="color: red"><strong>Maestro de Terceros</strong></a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    <a href="javascript:contenido('tercero');" >Crear</a><br>
                                    Consultar<br>
                                    Desactivar<br>
                                    Actutalizar<br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5"  style="color: red"><strong>Parametros</strong></a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                    <a href="javascript:contenido('Control_Consecutivos');" >Control Consecutivos</a><br>
                                     <a href="javascript:contenido('Forma_Pago');" >Formas de Pago</a><br>
                                    <a href="javascript:contenido('Tipo_Tercero');" >Tipo Tercero</a><br>
                                    <a href="javascript:contenido('Tipo_Documento');" >Tipo Documento</a><br>
                                    <a href="javascript:contenido('PUC');" >PUC</a><br>
                                    <a href="javascript:contenido('Departamento/Ciudad');" >Departamento/Ciudad</a><br>
                                    <a href="javascript:contenido('Pais');" >Pais</a><br>
                                    <a href="javascript:contenido('CodigoDian');" >Codigo DIAN</a><br>
                                    <a href="javascript:contenido('CodigoIca');" >Codigo ICA</a><br>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            <div class="panel-group" id="accordion">
            <div class="panel panel-default">
                <div class="panel-heading"  >
                    <h4 class="panel-title" >
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6"  style="color: red"><strong>Acerca de</strong></a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="panel-body">
                        <form id="InformacionPersonal" method="post"  action="#">
                            <div class="container-fluid">
                                <div class="row">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
            </div>
            <div class="col-xs-7" id="contenido">

            </div>
    </body>
</html>
