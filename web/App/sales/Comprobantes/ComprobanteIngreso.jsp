<%-- 
    Document   : CreateCE
    Created on : 11/07/2016, 11:35:43 PM
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
        <script src="js/validateC.js"></script>  

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
       
        

    </head>
    <body>
        <form id="comprobante" name="comprobante" role="form" method="post" action="" onsubmit="return validarFormDatosBasicos()">
         <%--   <input type="text" name="action" id="action" value="<%=action%>" hidden>--%>
            <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-5">
                <%--   <div class="h4 col-xs-12" align='center'><%=nTitle%></div>--%>
                    <div><h1>Crear Comprobante Ingreso</h1></div>
                </div>
                <div class="col-xs-6"></div>
            </div>
            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-6">
                    <div class="container-fluid">
                        <div class="row">
                                <div class="col-xs-6" >
                                    <div class="form-group">
                                        <h4>
                                        <label for="txt_ref1" class="cols-xs-2 control-label" style="color: red">
                                            <script type="text/javascript">
                                                    var d = new Date();
                                                var mm=new Date();
                                                var m2 = mm.getMonth() + 1;
                                                var mesok = (m2 < 10) ? '0' + m2 : m2;
                                                var mesok=new Array(12);
                                                        mesok[0]="Enero";
                                                        mesok[1]="Febrero";
                                                        mesok[2]="Marzo";
                                                        mesok[3]="Abril";
                                                        mesok[4]="Mayo";
                                                        mesok[5]="Junio";
                                                        mesok[6]="Julio";
                                                        mesok[7]="Agosto";
                                                        mesok[8]="Septiembre";
                                                        mesok[9]="Octubre";
                                                        mesok[10]="Noviembre";
                                                        mesok[11]="Diciembre";
                                                document.write(d.getDate(),'/'+mesok[mm.getMonth()],'/'+d.getFullYear(),
                                                ' - '+d.getHours(),':'+d.getMinutes());
                                            </script>
                                        </label></h4>
                                    </div>
                                </div>
                                <div class="col-xs-6" >
                                    <div class="form-group">
                                        <label for="" id="consecutivo" class="cols-xs-2 control-label">Consecutivo</label>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6" >
                                <div class="form-group">
                                    <label for="cbx_Lugar" class="cols-xs-2 control-label">Lugar:</label>
                                    <div class="input-group-group">
                                        <select name="cbx_Lugar" id="cbx_Lugar" class="form-control select2"  data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar">
                                            <option value=''>Seleccione..</option>
                                        </select>
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
                        </div>&nbsp;
                        <div class="row">
                            <iv class="col-xs-4"></iv>
                            <iv class="col-xs-4">
                                <button type="button" class="btn btn-default" id="btn_agregarConcepto"data-toggle="modal" data-target="#myModal">Agregar Concepto</button>
                            </iv>
                            <iv class="col-xs-4"></iv>
                        </div>
                    </div>&nbsp;
                </div>
                <div class="col-xs-2"></div>  
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
                                        <th>Concepto</th>
                                        <th>Valor</th>
                                        <th>Cuenta</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th></th>
                                <th>
                                    <a href="#" data-toggle="modal" data-target="#myModal">
                                        <span class="glyphicon glyphicon-pencil"></span>
                                        <strong>Editar</strong>
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
            <div class="row">
                <div class="col-xs-2"></div>
                <div class="col-xs-6">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_valorTotal" class="cols-xs-2 control-label">Valor Total:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-numero" id="txt_valorTotal"  name="txt_valorTotal" type="text" placeholder="EJ: ">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_ContablizadoPor" class="cols-xs-2 control-label">Contabilizado por:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-letras" id="txt_ContablizadoPor"  name="txt_ContablizadoPor" type="text" placeholder="EJ: ">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-2"></div>
            </div>&nbsp;
                        <div class="row">
                        <div class="col-xs-3"></div>
                        <div class="col-xs-3">
                            <button id="btn_Aceptar" type="submit" class="btn btn-default ">Aceptar</button>
                        </div>
                        <div class="col-xs-3">
                            <button id="btn_Imprimir" type="button" class="btn btn-default ">Imprimir</button>
                        </div>
                        <div class="col-xs-3"></div>
                    </div>
    </form>
                    
        <div class="container">
            <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                  <h4 class="modal-title">Datos Concepto</h4>
                </div>
                <div class="modal-body">
                    <form id="menu" name="menu" role="form" method="post" action="" onsubmit="return validarFormConceptos()">
                    <div class="container-fluid">
                        <div class="row">
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="txt_concepto" class="cols-xs-2 control-label">Concepto:</label>
                                        <div class="input-group-group">
                                            <input class="form-control" id="txt_concepto"  name="txt_concepto" type="text" placeholder="EJ: ">
                                        </div>
                                    </div>
                                </div>  
                                <div class="col-xs-6">
                                    <div class="form-group">
                                        <label for="cbx_cuenta" class="cols-xs-2 control-label">Cuenta:</label>
                                        <div class="input-group-group">
                                            <select name="cbx_cuenta" id="cbx_cuenta" class="form-control select2" >
                                                    <option value=''>Seleccione..</option>
                                                </select>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_efectivo" class="cols-xs-2 control-label">Efectivo:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-numero" id="txt_efectivo"  name="txt_efectivo" type="text" placeholder="EJ: ">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_cheque" class="cols-xs-2 control-label">Cheque:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-numero" id="txt_cheque"  name="txt_cheque" type="text" placeholder="EJ: " onkeyup="validacion('txt_FechaExpedicion');">
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_transferencia" class="cols-xs-2 control-label">Transferencia:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-numero " id="txt_transferencia"  name="txt_transferencia" type="text" placeholder="EJ: " onkeyup="validacion('txt_FechaExpedicion');">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="txt_consignacion" class="cols-xs-2 control-label">Consignacion:</label>
                                    <div class="input-group-group">
                                        <input class="form-control solo-numero" id="txt_consignacion"  name="txt_consignacion" type="text" placeholder="EJ: " onkeyup="validacion('txt_FechaExpedicion');">
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" id="btn_GuargarConcepto" class="btn btn-default center-block" >Agregar</button>
                </div>
                    </form>
              </div>

            </div>
          </div>
        </div>
        </div>
    </body>
</html>
