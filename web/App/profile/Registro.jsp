<%-- 
    Document   : Registro
    Created on : 21/06/2016, 02:53:06 PM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head> 
        <title>Registro MCPY</title>
        <meta charset="utf-8">
        
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--JQuery v1.12.2 -->
        <script src="../../libs/com.jquery.code/1.12.2/jquery.min.js"></script> 

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="js/enlace.js"></script> 
    </head>
    <body>
                <div class="container">  
                     <img src="images/LogoRealt.png"   width="200" height="75" align="left">
                 </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
                <div class="container-fluid well">
                    <div class="row">
                        <div class="col-xs-4">
                            <label for="txt_Nombres" class="cols-xs-6 control-label">Nombres</label>
                            <div class="input-group" >
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="txt_Nombres" id="txt_Nombres"  placeholder="Ingrese su Nombre"/>   
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <label for="txt_Apellido1" class="cols-xs-2 control-label">Apellido No. 1</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="txt_Apellido1" id="txt_Apellido1"  placeholder="Ingrese su Primer Apellido"/>
                            </div>
                        </div>
                           <div class="col-xs-4">
                            <label for="txt_Apellido2" class="cols-xs-2 control-label">Apellido No. 2</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="txt_Apellido2" id="txt_Apellido2"  placeholder="Ingrese su Segundo Apellido"/>
                            </div>
                        </div>
                    </div>&nbsp;
                        <div class="row">
                        <div class="col-xs-4">
                            <label for="txt_Email" class="cols-xs-2 control-label">Correo Electrónico</label>	
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="txt_Email" id="txt_Email"  placeholder="Ej: andres@hotmail.com"/>
                            </div>   
                        </div>


                         <div class="col-xs-4">
                            <label for="txt_NumeroIdentificacion" class="cols-xs-2 control-label">Tipo de Identificación</label>	
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <select class="form-control" id ="cbo_TipoIdentificacion"    name ="cbo_TipoIdentificacion"  >
                                    <option value ="">Seleccione..</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-xs-4">
                            <label for="txt_NumeroIdentificacion" class="cols-xs-2 control-label">Número de Identificación</label>	
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="txt_NumeroIdentificacion" id="txt_NumeroIdentificacion"  placeholder="Ingrese su Número de Identificación"/>
                            </div>
                        </div>


                        </div>&nbsp;
                    <div class="row">
                        <div class="col-xs-6">
                            <label for="txt_ContraseñaRegistro" class="cols-xs-2 control-label">Contraseña</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <input type="password" class="form-control" name="txt_ContraseñaRegistro" id="txt_ContraseñaRegistro"  placeholder="Ingrese su contraseña"/>
                            </div>
                        </div>
                            <div class="col-xs-6">
                            <label for="txt_ConfirmarContraseñaregistro" class="cols-xs-2 control-label">Confirmar Contraseña</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                <input type="password" class="form-control" name="txt_ConfirmarContraseñaRegistro" id="txt_ConfirmarContraseñaRegistro"  placeholder="Confirme su contraseña"/>
                            </div>&nbsp;
                            </div>
                            <div class="form-group ">
                              <!--  <div class="checkbox-inline">
                                    <input type="checkbox" id="ch_AcpetoTerminos">Acepto
                                    <a href=""  data-toggle="modal" data-target="#ModalTerminosCondiciones">Términos y Condiciones</a>
                                </div><br>-->
                                <button id="Registrarse" type="button" class="btn btn-default center-block" data-toggle="modal" data-target="#myModal">Registrarse</button>
                            </div>
                        </div> 
                    </div>
              <!--      <div class="row">
                        <div class="col-xs-4"></div>
                        <div class="col-xs-8">
                            ¿Ya estas Registrado?&nbsp;&nbsp;<a href=""  data-toggle="modal" data-target="#myModal">Ingresa Aquí</a>
                        </div>
                    </div>-->
                </div>


          <!--      <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Ingresar</h4>
                            </div>
                            <div class="modal-body">

                                <label for="txt_CedulaLogin" class="control-label">Cédula</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                                    <input id="txt_CedulaLogin" type="text" class="form-control" name="txt_CedulaLogin" id="email"  placeholder="Ingrese su Número de Identificación"/>
                                </div>
                                <br>
                                <label for="txt_ContraseñaLogin" class="control-label">Contraseña</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
                                    <input id="txt_ContraseñaLogin" type="password" class="form-control" name="txt_ContraseñaLogin" id="password"  placeholder="Ingrese su contraseña"/>
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-default center-block" data-dismiss="modal" onclick="nuevo();">Ingresar</button>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>-->
            
            
            </div>
            <div class="col-xs-2"></div>
        </div>
    </body>
</html>
