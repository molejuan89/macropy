<%-- 
    Document   : viewCC
    Created on : 16/07/2016, 11:40:01 AM
    Author     : Andres
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <title>View Consecutivos - MCPY</title>
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
            <div><h1>Consecutivos</h1></div>
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading"  >
                        <h4 class="panel-title" >
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapse1" style="color: black"><strong>Consecutivos</strong></a>
                            <a href="javascript:modiframe('actionProfile','maintenance.jsp?action=profile-add');void 0">
                                &nbsp;<span class="glyphicon glyphicon-plus" style="color: blue"></span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse collapse in">
                        <div class="panel-body">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="row">
                                        <div class="col-xs-4">
                                            <a href="#">
                                        &nbsp;<span>Ing</span>
                                    </a> 
                                        </div>
                                        <div class="col-xs-4"></div>
                                        <div class="col-xs-4">
                                            <div align='right'>
                                     <a href="#">
                                        &nbsp;<span class="glyphicon glyphicon-pencil" style="color: green"></span>
                                    </a>  
                                    </div>
                                        </div>
                                    
                                    </div>
                                </div>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div><br><br><br><br>
        <div class="row">
            <div class="col-xs-2"></div>
        <div class="col-xs-7" id="contenido">
            <div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe  src="http://localhost:8080/macropy/App/sales/General_maintenance/control_consecutivo/control_consecutivo.jsp"></iframe>
                </div>
            </div>
        </div>
            <div class="col-xs-2"></div>
        </div>
    </body>
</html>
