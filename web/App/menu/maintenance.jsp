<%-- 
    Document   : MenuCRUD
    Created on : 7/07/2016, 09:52:41 PM
    Author     : Andres
--%>
<%
    String action = request.getParameter("action");
    String mensaje = request.getParameter("message");
    String codigo = request.getParameter("code");
    String padre = request.getParameter("father");
    String tipo = request.getParameter("type");
    String link = request.getParameter("link");
    int orden = Integer.parseInt(request.getParameter("order"));
    int nivel = Integer.parseInt(request.getParameter("level"));
    String nTitle = "";
    String nMessage = "";
    String nId = "";
    String nFather = "";
    String nType = "";
    String nLink = "";
    String nStateCode = "";
    int nOrder = 0;
    int nLevel = 0;
    if (link.length() == 0) {
        link = "#";
    }

    if (action.equals("menu-add")) {
        nTitle = "Agregar Nodo";
        //nMessage = "";
        nFather = codigo;
        //nType = "";
        nLink = link;
        //nOrder = ;
        nLevel = nivel + 1;
        if (nLevel > 1) {
            nId = codigo + "xx";
        }
    } else if (action.equals("menu-del")) {
        nTitle = "Eliminar Nodo";
        nMessage = mensaje;
        nId = codigo;
        nFather = padre;
        nType = tipo;
        nLink = link;
        nOrder = orden;
        nLevel = nivel;
        nStateCode = "readonly";
    } else if (action.equals("menu-upd")) {
        nTitle = "Actualizar Nodo";
        nMessage = mensaje;
        nId = codigo;
        nFather = padre;
        nType = tipo;
        nLink = link;
        nOrder = orden;
        nLevel = nivel;
        nStateCode = "readonly";
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Gestion_Menu - MCPY</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>


        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>


        <!--Bootstrap-datepicker https://github.com/eternicode/bootstrap-datepicker -->        
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/css/bootstrap-datepicker.min.css" />
        <script src="<%=request.getContextPath()%>/libs/com.github/eternicode/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <script src="<%=request.getContextPath()%>/js/util.js"></script>
        <script src="js/validate.js"></script>
    </head>

    <body>
        <div class="row">
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
            <div class="col-xs-4">&nbsp;</div>
        </div>
        <form id="menu" name="menu" role="form" method="post" action="<%=request.getContextPath() + "/process"%>" onsubmit="return validarFormPerfil()">
            <input type="text" name="action" id="action" value="<%=action%>" hidden>
            <input type="text" name="father" id="father" value="<%=nFather%>" hidden>
            <input type="text" name="level" id="level" value="<%=nLevel%>" hidden>
            <div class="row">
                <div class="col-xs-3"></div>
                <div class="col-xs-6">
                    <div class="container-fluid well">
                        <div class="row">
                            <div class="h4 col-xs-12" align='center'><%=nTitle%></div>
                        </div>
                        <div class="row">
                            <div class="col-xs-8">
                                <div class="form-group">
                                    <label for="message" class="control-label" >Mensaje:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" id="message" name="message" value="<%=nMessage%>" onkeyup="validacion('message')" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar de Expedicion de la Cedula">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="code" class="control-label">Codigo:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" id="code" name="code" value="<%=nId%>" <%=nStateCode%> onkeyup="validacion('code')" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar de Expedicion de la Cedula">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-4">
                                <div class="form-group">
                                    <label for="Tipo"  class="control-label" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar de Expedicion de la Cedula">Tipo:</label>
                                    <div class="input-group-group">                                            
                                        <input type="radio"  name="type" id="type" value="M">&nbsp;Menu &nbsp;&nbsp;
                                        <input type="radio" name="type" id="type" value="V">&nbsp;Vista 
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-2"></div>
                            <div class="col-xs-6">
                                <div class="form-group">
                                    <label for="order" class="control-label">Orden:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" class="form-control" id="order" name="order" value="<%=nOrder%>" onkeyup="validacion('order')" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar de Expedicion de la Cedula">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label for="link"  class="control-label">Link:</label>
                                    <div class="input-group" >
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-th-large" aria-hidden="true"></i></span>
                                        <input type="text" name="link" class="form-control" id="link" value="<%=nLink%>" onkeyup="validacion('link')" data-toggle="tooltip" data-placement="top" title="Seleccione el Lugar de Expedicion de la Cedula">
                                    </div>
                                </div>
                            </div>   
                        </div>
                        <button type="submit" class="btn btn-default center-block" id="btn_crearPerfil" name="aceptar">Aceptar</button>
                    </div>
                </div>
                <div class="col-xs-3"></div>
            </div>
        </form>
        <script>
            setValue("type", "<%=nType%>");
        </script>
    </body>
</html>

