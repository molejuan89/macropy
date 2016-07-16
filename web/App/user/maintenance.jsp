<%-- 
    Document   : Registro
    Created on : 21/06/2016, 02:53:06 PM
    Author     : Andres
--%>
<%
    String action = request.getParameter("action");
    String username = request.getParameter("username");
    String cedula = request.getParameter("cedula");
    String nombre = request.getParameter("nombre");
    String apellido1 = request.getParameter("apellido1");
    String apellido2 = request.getParameter("apellido2");
    String telefono = request.getParameter("telefono");
    String email = request.getParameter("email");
    String expira_pass = request.getParameter("expira_pass");

    String nTitle = "";
    String nUsername = "";
    String nCedula = "";
    String nNombre = "";
    String nApellido1 = "";
    String nApellido2 = "";
    String nTelefono = "";
    String nEmail = "";
    String nExpira_pass = "";
    String nPassword = "";

    if (action.equals("user-add")) {
        nTitle = "Agregar usuario";
    } else if (action.equals("user-upd")) {
        nTitle = "Actualizar usuario";
        nUsername = username;
        nCedula = cedula;
        nNombre = nombre;
        nApellido1 = apellido1;
        nApellido2 = apellido2;
        nTelefono = telefono;
        nEmail = email;
        nExpira_pass = expira_pass;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <title>Create User - MCPY</title>
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

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">


    </head>
    <body>
        <form id="menu" name="menu" role="form" method="post" action="<%=request.getContextPath() + "/process"%>" onsubmit="return ValidarFormUser()">
            <input type="text" name="action" id="action" value="<%=action%>" hidden>
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
                <div class="row">
                    <div class="container-fluid well">
                        <div class="h5" align="center"><%=nTitle%></div>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_Nombres" class="cols-xs-6 control-label">Nombres:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="nombre" id="nombre"  value="<%=nNombre%>" placeholder="EJ: JUAN " onkeyup="validacion('txt_Nombres')" data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre (s) del Usuario">   
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_Apellido1" class="cols-xs-2 control-label">Apellido No. 1:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="apellido1" id="apellido1" value="<%=nApellido1%>" placeholder="EJ:PEREZ" onkeyup="validacion('txt_Apellido1')" data-toggle="tooltip" data-placement="top" title="Ingrese el Primer Apellido">
                                    </div>
                                </div>
                            </div>


                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_Apellido2" class="cols-xs-2 control-label">Apellido No. 2:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="apellido2" id="apellido2" value="<%=nApellido2%>" placeholder="EJ: RUIZ" onkeyup="validacion('txt_Apellido2')" data-toggle="tooltip" data-placement="top" title="Ingrese el Segundo Apellido">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_User" class="cols-xs-2 control-label">User-Name:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-letras" name="username" id="username"  value="<%=nUsername%>" placeholder="EJ:JPEREZ" onkeyup="validacion('txt_User')" data-toggle="tooltip" data-placement="top" title="Ingrese Primera Letra del Nombre + Primer Apellido">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_NumeroId" class="cols-xs-2 control-label">Número de Identificación:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-numero" name="cedula" id="cedula" value="<%=nCedula%>" placeholder="EJ: 1144148015" onkeyup="validacion('txt_NumeroId')" data-toggle="tooltip" data-placement="top" title="Ingrese el Numero de Cedula">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="txt_FechaExpiracion" class="cols-xs-2 control-label">Fecha de Expiracion:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control datepicker" name="expira_pass" id="expira_pass" value="<%=nExpira_pass%>" placeholder="1999-01-01" onkeyup="validacion('txt_FechaExpiracion');" data-toggle="tooltip" data-placement="top" title="Seleccione Hasta Cuando  ">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_telefono" class="cols-xs-2 control-label">Teléfono:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control solo-numero" name="telefono" id="telefono" value="<%=nTelefono%>"  placeholder="Ej: 380 86 66" onkeyup="validacion('txt_telefono')" data-toggle="tooltip" data-placement="top" title="Ingrese el Numero de Telefono" >
                                    </div>   
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_Email" class="cols-xs-2 control-label">Correo Electrónico:</label>	
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                        <input type="email" class="form-control" name="email" id="email" value="<%=nEmail%>" placeholder="Ej: andres@hotmail.com" onkeyup="validacion('txt_Email')" data-toggle="tooltip" data-placement="top" title="Ingrese el Correo Electronico">
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
                                        <input type="password" class="form-control" name="password" id="password"  placeholder="***********" onkeyup="validacion('txt_contrasena')" data-toggle="tooltip" data-placement="top" title="Ingrese la Contraseña no Menos de 6 Digitos">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_contrasena2" class="cols-xs-2 control-label">Confirmar Contraseña:</label>
                                    <div class="input-group">
                                        <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                        <input type="password" class="form-control" name="password2" id="password2"  placeholder="***********" onkeyup="validacion('txt_contrasena2')" data-toggle="tooltip" data-placement="top" title="Ingrese la Contraseña no Menos de 6 Digitos">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_Registrarse" name="btn_Registrarse">Registrarse</button>
                    </div>
                </div>
            </div>
            <div class="col-xs-2"></div>
        </form>
    </body>
</html>