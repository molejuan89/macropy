<%-- 
    Document   : Crear_Nodo
    Created on : 6/07/2016, 11:34:57 PM
    Author     : Andres
--%>
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Crear_Nodo - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validate.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="../../libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="../../libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <!-- Campos de fecha -->
        <script src="js/date-fields.js"></script> 

        <!-- Font style -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">
    </head>
    <body>
        <form id="login" name="login" role="form" method="post">
        <div class="col-xs-2"></div>
        <div class="col-xs-8">
        <div class="row">
                <div class="container-fluid well">
                    
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_codigo" class="cols-xs-6 control-label">Codigo:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_codigo" id="txt_codigo"  placeholder="  " onkeyup="validacion('txt_Nombres')">   
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_orden" class="cols-xs-2 control-label">Orden:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_orden" id="txt_orden"  placeholder=" " onkeyup="validacion('txt_Apellido1')">
                                    </div>
                                </div>
                            </div>
            

                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_mensaje" class="cols-xs-2 control-label">Mensaje:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_mensaje" id="txt_mensaje"  placeholder=" " onkeyup="validacion('txt_Apellido2')">
                                    </div>
                                </div>
                            </div>
                            </div>&nbsp;
                            <div class="row">
                            <div class="col-xs-8">
                                <div class="form-group">
                                    <label for="txt_url" class="cols-xs-2 control-label">Url:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_url" id="txt_url"  placeholder=" " onkeyup="validacion('txt_User')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="Genero" class="cols-xs-2 control-label">Tipo:</label><br>
                                    <div class="input-group-group">
                                        <input type="radio"  name="tipo" id="tipo" value="M">&nbsp;Menu &nbsp;&nbsp;
                                        <input type="radio" name="tipo" id="tipo" value="V">&nbsp;Vista 
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <button type="submit" class="btn btn-default center-block" id="btn_CrearNodo" name="btn_CrearNodo">Aceptar</button>
                </div>
            </div>
        </div>
        <div class="col-xs-2"></div>
        </form>
    </body>
</html>
