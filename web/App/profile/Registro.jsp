<%-- 
    Document   : Registro
    Created on : 21/06/2016, 02:53:06 PM
    Author     : Andres
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <title>Portal Hojas de Vida - Proservis</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validaciones.js"></script>  


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

        <!-- Cargar Listas de valores-->
        <script src="js/load-list.js"></script>

    </head>
    <body>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-7">
                <div class="container-fluid well">
                    <form id="login" name="login" role="form" method="post">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Nombres" class="cols-xs-6 control-label">Nombres:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_Nombres" id="txt_Nombres"  placeholder="EJ: JUAN " onkeyup="validacion('txt_Nombres')">   
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Apellido1" class="cols-xs-2 control-label">Apellido No. 1:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_Apellido1" id="txt_Apellido1"  placeholder="EJ:PEREZ" onkeyup="validacion('txt_Apellido1')">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Apellido2" class="cols-xs-2 control-label">Apellido No. 2:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_Apellido2" id="txt_Apellido2"  placeholder="EJ: RUIZ" onkeyup="validacion('txt_Apellido2')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_User" class="cols-xs-2 control-label">User-Name:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="txt_User" id="txt_User"  placeholder="EJ:JPEREZ" onkeyup="validacion('txt_User')">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_TipoID" class="cols-xs-2 control-label">Tipo de Identificación:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <select class="form-control" id ="cbx_TipoID"    name ="cbx_TipoID"  >
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_NumeroId" class="cols-xs-2 control-label">Número de Identificación:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" name="txt_NumeroId" id="txt_NumeroId"  placeholder="EJ: 1144148015" onkeyup="validacion('txt_NumeroId')">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_FechaExpiracion" class="cols-xs-2 control-label">Fecha de Expiracion:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control datepicker" name="txt_FechaExpiracion" id="txt_FechaExpiracion"  placeholder="1999-01-01" onkeyup="validacion('txt_FechaExpedicion');">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_FechaSistema" class="cols-xs-2 control-label">Fecha del Sistema:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control datepicker" name="txt_FechaSistema" id="txt_FechaSistema"  placeholder="1999-01-01" onkeyup="validacion('txt_FechaSistema');">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Email" class="cols-xs-2 control-label">Correo Electrónico:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                        <input type="email" class="form-control" name="txt_Email" id="txt_Email"  placeholder="Ej: andres@hotmail.com" onkeyup="validacion('txt_Email')">
                                    </div>   
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Email2" class="cols-xs-2 control-label">Confirmar Correo Electrónico:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                        <input type="email" class="form-control" name="txt_Email2" id="txt_Email2"  placeholder="Ej: andres@hotmail.com" onkeyup="validacion('txt_Email2')"> 
                                    </div>   
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_contrasenaReg" class="cols-xs-2 control-label">Contraseña:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                        <input type="password" class="form-control" name="txt_contrasenaReg" id="txt_contrasenaReg"  placeholder="***********" onkeyup="validacion('txt_contrasenaReg')">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_contrasenaReg2" class="cols-xs-2 control-label">Confirmar Contraseña:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                        <input type="password" class="form-control" name="txt_contrasenaReg2" id="txt_contrasenaReg2"  placeholder="***********" onkeyup="validacion('txt_contrasenaReg2')">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_Registrarse" name="btn_Registrarse">Registrarse</button>
                    </form>
                </div>
            </div>
            <div class="col-xs-3"></div>
    </body>
</html>
