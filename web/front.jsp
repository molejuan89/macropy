<%-- 
    Document   : front
    Created on : 4/07/2016, 10:12:18 PM
    Author     : AGiraldo
--%>
<%@page import="com.mcpy.menu.model.Menu"%>
<%@page import="com.mcpy.menu.dao.MenuDao"%>
<%@page import="com.mcpy.control.database.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Database conex = (Database) request.getSession().getAttribute("conex");
    Menu menu = MenuDao.MenuDao(conex);
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Bootstrap Case</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--JQuery v1.12.2 -->
        <script src="libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Font style -->
        <link rel="stylesheet" href="libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <script type="text/javascript">
            (function($) {
                $(document).ready(function() {
                    $('ul.dropdown-menu [data-toggle=dropdown]').on('click', function(event) {
                        event.preventDefault();
                        event.stopPropagation();
                        $(this).parent().siblings().removeClass('open');
                        $(this).parent().toggleClass('open');
                    });
                });
            })(jQuery);
        </script>

        <style>
            .marginBottom-0 {margin-bottom:0;}
            .dropdown-submenu{position:relative;}
            .dropdown-submenu>.dropdown-menu{top:0;left:100%;margin-top:-6px;margin-left:-1px;-webkit-border-radius:0 6px 6px 6px;-moz-border-radius:0 6px 6px 6px;border-radius:0 6px 6px 6px;}
            .dropdown-submenu>a:after{display:block;content:" ";float:right;width:0;height:0;border-color:transparent;border-style:solid;border-width:5px 0 5px 5px;border-left-color:#cccccc;margin-top:5px;margin-right:-10px;}
            .dropdown-submenu:hover>a:after{border-left-color:#555;}
            .dropdown-submenu.pull-left{float:none;}.dropdown-submenu.pull-left>.dropdown-menu{left:-100%;margin-left:10px;-webkit-border-radius:6px 0 6px 6px;-moz-border-radius:6px 0 6px 6px;border-radius:6px 0 6px 6px;}

        </style>

    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-static-top marginBottom-0" role="navigation">
            <!--
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" target="_blank">NewWindow</a>
            </div>
            -->
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav">

                    <!-- Inicio menu dinamico-->
                    <%=menu.writeMenuHtml()%>
                    <!-- fin menu dinamico-->

                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>

        <div class="jumbotron">
            <h1 class="page-header">Bootstrap 3.0.3<br>
                <small>Navbar - Click Dropdown - Sub - Sub - Sub - Sub ...</small></h1>
        </div>

        <div class="container">

            <div class="row">
                <h1>You Like It ?</h1>
                <br>
            </div>

        </div>

        <div class="container">
            <h3>Navbar With Dropdown</h3>
            <p>This example adds a dropdown menu for the "Page 1" button in the navigation bar.</p>
        </div>

    </body>
</html>

