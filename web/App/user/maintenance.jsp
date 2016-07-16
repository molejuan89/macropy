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
        <script src="<%=request.getContextPath()%>/js/date-fields.js"></script> 

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">


    </head>
    <body>
        <form id="menu" name="menu" role="form" method="post" action="<%=request.getContextPath() + "/process"%>" onsubmit="return ValidarFormUser()">
            <input type="text" name="action" id="action" value="<%=action%>" hidden>
            <div class="col-xs-12">
                <div class="row">
                    <div class="container-fluid well">
                        <div class="h5" align="center"><%=nTitle%></div>&nbsp;
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group" >
                                        <input type="text" class="form-control solo-letras" name="nombre" id="nombre"  value="<%=nNombre%>" placeholder="NOMBRE(S) "  data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre (s) del Usuario">   
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-letras" name="apellido1" id="apellido1" value="<%=nApellido1%>" placeholder="PRIMER APELLIDO"  data-toggle="tooltip" data-placement="top" title="Ingrese el Primer Apellido">
                                    </div>
                                </div>
                            </div>


                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-letras" name="apellido2" id="apellido2" value="<%=nApellido2%>" placeholder="SEGUNDO APELLIDO"  data-toggle="tooltip" data-placement="top" title="Ingrese el Segundo Apellido">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-letras" name="username" id="username"  value="<%=nUsername%>" placeholder="USUARIO"  data-toggle="tooltip" data-placement="top" title="Ingrese Primera Letra del Nombre + Primer Apellido">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-numero" name="cedula" id="cedula" value="<%=nCedula%>" placeholder="CEDULA"  data-toggle="tooltip" data-placement="top" title="Ingrese el Numero de Cedula">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control datepicker" name="expira_account" id="expira_account" value="<%=nExpira_pass%>" placeholder="FECHA EXPIRA CUENTA"  data-toggle="tooltip" data-placement="top" title="Seleccione Fecha Expiracion Cuenta">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control solo-numero" name="telefono" id="telefono" value="<%=nTelefono%>"  placeholder="TELEFONO"  data-toggle="tooltip" data-placement="top" title="Ingrese el Numero de Telefono" >
                                    </div>   
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="email" class="form-control" name="email" id="email" value="<%=nEmail%>" placeholder="E-MAIL"  data-toggle="tooltip" data-placement="top" title="Correo Electronico">
                                    </div>   
                                </div>
                            </div>
                        </div>&nbsp;
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="password" class="form-control" name="password" id="password"  placeholder="CONTRASEÑA"  data-toggle="tooltip" data-placement="top" title="Ingrese la Contraseña no Menos de 6 Digitos">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="password" class="form-control" name="password2" id="password2"  placeholder="CONFIRMAR CONTRASEÑA"  data-toggle="tooltip" data-placement="top" title="Ingrese la Contraseña no Menos de 6 Digitos">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <div class="input-group-group">
                                        <input type="text" class="form-control datepicker" name="expira_pass" id="expira_pass" value="<%=nExpira_pass%>" placeholder="FECHA EXPIRA PASS"  data-toggle="tooltip" data-placement="top" title="Seleccione Fecha Expiracion Password">
                                    </div>
                                </div>
                            </div>
                        </div>&nbsp;
                        <button type="submit" class="btn btn-default center-block" id="btn_Registrarse" name="btn_Registrarse">Registrar</button>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>