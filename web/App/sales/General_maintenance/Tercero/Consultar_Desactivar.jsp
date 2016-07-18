<%-- 
    Document   : Consultar_Desactivar
    Created on : 16/07/2016, 11:19:15 AM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Consultar Desactivar Tercero - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!-- Validar antes de Activar Boton Registro-->
        <script src="js/validate.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    </head>  
    <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-6">
                    <div><h1>Consultar/Desactivar Tercero</h1></div>
                </div>
                <div class="col-xs-5"></div>
            </div>
        <div class="row">
            <div class="col-xs-2"></div>
            <div class="col-xs-8">
        <div id="Nodos" class="tab-pane fade in active">
            <div class="container-fluid ">
                <div class="row">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No. Identificacion</th>
                                <th>Nombre</th>
                                <th>Razon Social</th>
                                <th>Tipo</th>
                                <th>Estado</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th>
                            <a href="#" style="color: green" data-toggle="modal" data-target="#myModal">
                                <span class="glyphicon glyphicon-pencil"></span>
                                <strong>Editar</strong>
                            </a>
                        </th>
                        <th>
                            <a href="#" style="color: red">
                                <span class="glyphicon glyphicon-ban-circle"></span>
                                <strong>Desactivar</strong>
                            </a>
                        </th>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
            </div>
            <div class="col-xs-2"></div>
        </div>
        
        <div class="container">
            <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Datos Tercero</h4>
                </div>
                <div class="modal-body">
                    <form id="actTercero" name="actTercero" role="form" method="post" action="" onsubmit="return validarFormActualizar()">
                    <div class="container-fluid">
                        <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                            <label for="txt_NombreAct" class="cols-xs-6 control-label">Nombre:</label>
                                <div class="input-group-group" >
                                    <input type="text" class="form-control" name="txt_NombreAct" id="txt_NombreAct"  placeholder="EJ:"  data-toggle="tooltip" data-placement="top" title="Ingrese el Nombre (s)"/>   
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_RazonSocialAct" class="cols-xs-6 control-label">Razon Social:</label>
                                <div class="input-group-group" >
                                    <input type="text" class="form-control" name="txt_RazonSocialAct" id="txt_RazonSocialAct"  placeholder="EJ:"  data-toggle="tooltip" data-placement="top" title="Ingrese la Razon Social"/>   
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_DireccionAct" class="cols-xs-2 control-label">Dirección:</label>
                                <div class="input-group-group">
                                    <input class="form-control" id ="txt_DireccionAct"   name ="txt_DireccionAct"   type ="text"  placeholder="EJ: CALLE 73I # 4N53"  data-toggle="tooltip" data-placement="top" title="Ingrese la Dirección">
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="form-group">                                              
                                <label for="txt_telefonoAct" class="cols-xs-2 control-label">Teléfono:</label>
                                <div class="input-group-group">
                                    <input class="form-control solo-numero" id ="txt_telefonoAct"   name ="txt_telefonoAct"   type ="text"  placeholder="EJ: 380 86 66 "  data-toggle="tooltip" data-placement="top" title="Ingrese el Telefono">
                                </div>
                            </div>
                        </div>
                    </div>
                        <div class= "row ">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_EmailAct" class="cols-xs-2 control-label">Correo Electrónico:</label>	
                                <div class="input-group-group">
                                    <input type="email" class="form-control" name="txt_EmailAct" id="txt_EmailAct"  placeholder="Ej: juan.perez@proservis.com.co" data-toggle="tooltip" data-placement="top" title="Ingrese el Correo Electrónico"/>
                                </div>  
                            </div>
                        </div>
                        <div class="col-xs-6" >
                                <div class="form-group">
                                    <label for="cbx_LugarAct" class="cols-xs-2 control-label">Lugar:</label>
                                    <div class="input-group-group">
                                        <select name="cbx_LugarAct" id="cbx_LugarAct" class="form-control select2"  data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar">
                                            <option value=''>Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div>
                        <div class= "row ">
                        <div class="col-xs-6" >
                                <div class="form-group">
                                    <label for="cbx_TipoAct" class="cols-xs-2 control-label">Tipo de Tercero:</label>
                                    <div class="input-group-group">
                                        <select name="cbx_TipoAct" id="cbx_TipoAct" class="form-control select2" data-toggle="tooltip" data-placement="top" title="Seleccione el Tipo de Tercero">
                                            <option value=''>Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txt_ObservacionAct" class="cols-xs-2 control-label">Observacion:</label>	
                                <div class="input-group-group">
                                    <input type="email" class="form-control" name="txt_ObservacionAct" id="txt_ObservacionAct"   placeholder="Ej: " data-toggle="tooltip" data-placement="top" title="Ingrese las Observaciones que tenga Sobre el Tercero"/>
                                </div>  
                            </div>
                        </div>
                    </div>
                        <div class= "row ">
                        <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_DianAct" class="cols-xs-2 control-label">Actividad Economica DIAN:</label>
                                    <div class="input-group-group">
                                        <select id ="cbx_DianAct" name="cbx_DianAct" class="form-control select2"  data-toggle="tooltip" data-placement="top" title="Seleccione la Actividad">
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="cbx_IcaAct" class="cols-xs-2 control-label">Actividad Economica ICA:</label>
                                    <div class="input-group-group">
                                        <select id ="cbx_IcaAct" name="cbx_IcaAct" class="form-control select2" data-toggle="tooltip" data-placement="top" title="Seleccione la Actividad">
                                            <option value ="">Seleccione..</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                    </div> 
                </div>
                <div class="modal-footer">
                    <button id="btn_AceptarAcTercero" type="submit" class="btn btn-default center-block">Aceptar</button>
                </div>
                    </form>
              </div>

            </div>
          </div>
        </div>
        </div>
    </body>
</html>
