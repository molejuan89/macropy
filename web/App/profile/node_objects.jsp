<%-- 
    Document   : node_objects
    Created on : 8/07/2016, 08:53:16 PM
    Author     : Andres
--%>

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
    </head>
    <body>
        <div class="container">
              <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#Nodos">Nodos</a></li>
                <li><a data-toggle="tab" href="#Objetos">Objetos</a></li>
              </ul>
              <div class="tab-content">
                <div id="Nodos" class="tab-pane fade in active">
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="col-xs-4"></div>
                            <div class="col-xs-4">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Perfil</th>
                                            <th>Nodo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>APL</td>
                                            <td>
                                                <td>
                                                    <input id="NodoCheck" type="checkbox" value="S">
                                                </td>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="col-xs-4"></div>
                        </div>
                    </div>
                    
                </div>
                <div id="Objetos" class="tab-pane fade">
                 <div class="container-fluid ">
                     <div class="row">
                            <div class="col-xs-1"></div>
                            <div class="col-xs-10">
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
                                                <td></td>
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
                            <div class="col-xs-1"></div>
                        </div>
                        
                </div>  
                </div>
              </div>
            </div>
    </body>
</html>