<%-- 
    Document   : assign_profile
    Created on : 8/07/2016, 08:30:49 PM
    Author     : Andres
--%>
<%@page import="com.mcpy.profile.model.Profile"%>
<%@page import="com.mcpy.profile.dao.ProfileDao"%>
<%@page import="com.mcpy.control.database.Database"%>
<%
    Database conex = (Database) request.getSession().getAttribute("conex");

    String[][] a = ProfileDao.AllProfiles(conex);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head> 
        <title>Assign Profile - MCPY</title>
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

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <!-- Util Javascript -->
        <script src="<%=request.getContextPath()%>/js/util.js"></script>
    </head>
    <body>
        <br>
        <br>
        <div class="col-xs-1"></div>
        <div class="col-xs-3">
            <div><h1>Assign Profile</h1></div>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading"  >
                        <h4 class="panel-title" >
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1"  style="color: blue"><strong>Perfiles</strong></a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse collapse in">
                        <div class="panel-body">
                            <form id="InformacionPersonal" method="post"  action="#">
                                <div class="container-fluid">
                                    <div class="row">
                                        <%
                                            if (a != null && a.length > 0) {
                                                for (int i = 0; i < a.length; i++) {
                                                    Profile p = new Profile(a[i]);
                                        %><%=p.href("actionProfile", "assign")%><%
                                                }
                                            }
                                        %>                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div><br><br><br><br>
        <div class="col-xs-7" id="contenido">
            <div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe  src="..." id="actionProfile" name="actionProfile"></iframe>
                </div>
            </div>
        </div>
    </body>
</html>
