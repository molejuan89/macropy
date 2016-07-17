<%-- 
    Document   : node_objects
    Created on : 8/07/2016, 08:53:16 PM
    Author     : Andres
--%>

<%@page import="com.mcpy.control.util"%>
<%@page import="com.mcpy.user.dao.UserProfilesDao"%>
<%@page import="com.mcpy.user.model.UserProfiles"%>
<%@page import="com.mcpy.user.model.User"%>
<%@page import="com.mcpy.control.database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Acces Menu - MCPY</title>
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

        Database conex = (Database) request.getSession().getAttribute("conex");

        User user = new User(new String[]{username, cedula, nombre, apellido1, apellido2, telefono, email, expira_pass});
        UserProfiles pview = UserProfilesDao.UserProfilesDao(conex, user, "O");
        UserProfiles pacces = UserProfilesDao.UserProfilesDao(conex, user, "A");

        request.getSession().setAttribute("user", user);
        request.getSession().setAttribute("pview", pview);
        request.getSession().setAttribute("pacces", pacces);

    %>
    <div class="h5">
        <u>
            <a href="#"><%="Usuario: " + user.getUsername()%></a>
        </u>
    </div>
    <form id="menu" name="menu" role="form" method="post" action="<%=request.getContextPath() + "/process"%>">
        <input type="text" name="action" id="action" value="user-assign" hidden>
        <div class="row">
            <div>
                <button type="submit" class="btn btn-success center-block " id="btn_Asignar" name="btn_AsignarNodo">Aplicar</button>
            </div>
        </div>
        <hr>

        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#Menu">Menu</a></li>
                <li><a data-toggle="tab" href="#Acceso">Acceso</a></li>
            </ul>
            <div class="tab-content">
                <div id="Menu" class="tab-pane fade in active">
                    <div class="container-fluid ">
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Descripcion</th>
                                        <th>X</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%=util.arrayToTableHtml(pview.toArray())%>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div id="Acceso" class="tab-pane fade">
                    <div class="container-fluid ">
                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Descripcion</th>
                                        <th>X</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%=util.arrayToTableHtml(pacces.toArray())%>
                                </tbody>
                            </table>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </form>
</body>
</html>