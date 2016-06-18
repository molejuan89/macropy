<%-- 
    Document   : perfil
    Created on : 16/06/2016, 08:35:02 PM
    Author     : AGiraldo
--%>

<%@page import="com.mcpy.control.database.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<%
    Database conn = (Database) request.getAttribute("conn");
    
    
%>
<html lang="en">
    <head> 
        <title>Perfiles</title>
        <meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!--JQuery v1.12.2 -->
        <script src="../libs/com.jquery.code/1.12.2/jquery.min.js"></script> 

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="../libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Website Font style -->
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">-->
    </head>
    <body>
        <div class="container">
            &nbsp;
        </div>
        <div class="container">
            <h2>Profile</h2><br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Firstname</th>
                        <th>Lastname</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john@example.com</td>
                    </tr>
                    <tr>
                        <td>Mary</td>
                        <td>Moe</td>
                        <td>mary@example.com</td>
                    </tr>
                    <tr>
                        <td>July</td>
                        <td>Dooley</td>
                        <td>july@example.com</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>