<%-- 
    Document   : node_objects
    Created on : 8/07/2016, 08:53:16 PM
    Author     : Andres
--%>

<%@page import="com.mcpy.control.util"%>
<%@page import="com.mcpy.profile.dao.ProfileNodesDao"%>
<%@page import="com.mcpy.menu.dao.MenuDao"%>
<%@page import="com.mcpy.control.database.Database"%>
<%@page import="com.mcpy.menu.model.Menu"%>
<%@page import="com.mcpy.profile.model.ProfileNodes"%>
<%@page import="com.mcpy.profile.model.Profile"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Node Objects - MCPY</title>
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

    <!-- Funcionalidad jeasyui table-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/App/menu/js/jsMenus.js"></script> 
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/demo/demo.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/libs/com.jeasyui/jquery.easyui.min.js"></script>

</head>
<body>
    <%
        /*<a href="javascript:modiframe('actionProfile','maintenance.jsp?codigo=0&descripcion=objetos minimos de conexion&admin=N&rol=rol_0000');void 0">0. objetos minimos de conexion</a><br>*/
        int codigo = Integer.parseInt(request.getParameter("codigo"));
        String descripcion = request.getParameter("descripcion");
        String admin = request.getParameter("admin");
        String rol = request.getParameter("rol");
        Profile profile = new Profile(new String[]{"" + codigo, descripcion, rol});
        Database conex = (Database) request.getSession().getAttribute("conex");
        ProfileNodes pnodes = ProfileNodesDao.ProfileNodesDao(conex, profile);
    %>
    <div class="container">
        <div class="h5">
            <u>
                <a href="#"><%=codigo + ". " + descripcion%></a>
            </u>
            <br><hr>
            <div class="container-fluid">
                <div class="col-xs-3"></div>
                <div class="col-xs-3">
                    <button type="submit" class="btn btn-default center-block" id="btn_Asignar" name="btn_AsignarNodo">Asignar</button>
                </div>
                <div class="col-xs-3">
                    <button type="submit" class="btn btn-default center-block" id="btn_Desasignar" name="btn_DesasignarNodo">Desasignar</button>
                </div>
                <div class="col-xs-3"></div>
            </div>
        </div>

        <ul class="nav nav-tabs">
            <li class="active"><a data-toggle="tab" href="#Nodos">Nodos</a></li>
            <li><a data-toggle="tab" href="#Objetos">Objetos</a></li>
        </ul>
        <div class="tab-content">
            <div id="Nodos" class="tab-pane fade in active">
                <div class="container-fluid ">
                    <div class="row">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Menu</th>
                                    <th>Codigo</th>
                                    <th>Autorizado</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%=util.arrayToTableHtml(pnodes.toArray())%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div id="Objetos" class="tab-pane fade">
                <div class="container-fluid ">
                    <div class="row">

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Schema</th>
                                    <th>Objeto</th>
                                    <th>Select</th>
                                    <th>Insert</th>
                                    <th>Delete</th>
                                    <th>Update</th>
                                    <th>execute</th>
                                    <th>All permissions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>mcpy</td>
                                    <td>Ciudad</td>
                                    <td class="center">
                                        <input id="objetoscheck" type="checkbox" value="S">
                                    </td>
                                    <td>
                                        <input id="objetoscheck" type="checkbox" value="I">
                                    </td>
                                    <td>
                                        <input id="objetoscheck" type="checkbox" value="D">
                                    </td>
                                    <td>
                                        <input id="objetoscheck" type="checkbox" value="U">
                                    </td>
                                    <td>
                                        <input id="objetoscheck" type="checkbox" value="E">
                                    </td>
                                    <td>
                                        <input id="objetoscheck" type="checkbox" value="AP">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>  
            </div>
        </div>
    </div>
</body>
</html>