<%-- 
    Document   : menu
    Created on : 5/07/2016, 11:10:20 PM
    Author     : AGiraldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<meta http-equiv="refresh" content="45">-->
        <!--JQuery v1.12.2 -->
        <script src="<%=request.getContextPath()%>/libs/com.jquery.code/1.12.2/jquery.min.js"></script>

        <!--Bootstrap v3.3.6 -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Font style -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/libs/com.bootstrapcdn.maxcdn/font-awesome/4.6.3/css/font-awesome.min.css">

        <!-- Funcionalidad jeasyui table-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/App/menu/js/jsMenus.js"></script> 
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/themes/default/easyui.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/themes/icon.css">
        <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/libs/com.jeasyui/demo/demo.css">
        <!--<script type="text/javascript" src="/macropy/libs/com.jeasyui/jquery.min.js"></script>-->
        <script type="text/javascript" src="<%=request.getContextPath()%>/libs/com.jeasyui/jquery.easyui.min.js"></script>
        
        <script src="<%=request.getContextPath()%>/js/util.js"></script>
        
    </head>
    <body>
        <div class="row">
                <div class="col-xs-1"></div>
                <div class="col-xs-3">
                    <div><h1>Menú</h1></div>
                </div>
                <div class="col-xs-8"></div>
            </div>
        <div align='center'>
            <div align='center' style="border: 10px;">
                <table>
                    <tr>
                        <td width="100%" align="center">
                            <div style="margin:20px 0;"></div>
                            <div style="margin:20px 0;">
                                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="collapseAll()">CollapseAll</a>
                                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="expandAll()">ExpandAll</a>
                            </div>
                            <table id="tg" title="Menú de la Aplicación" class="easyui-treegrid" style="width:800px;height:200px"
                                   data-options="
                                   iconCls: 'icon-ok',
                                   rownumbers: true,
                                   collapsible: true,
                                   fitColumns: true,
                                   url: '/macropy/MenuApp',
                                   method: 'get',
                                   lines: 'true',
                                   idField: 'id',
                                   treeField: 'message',
                                   onContextMenu: onContextMenu
                                   ">
                                <thead>
                                    <tr>
                                        <th data-options="field:'message'" width="150" align="left">Mensaje</th>
                                        <th data-options="field:'id'" width="100">Codigo</th>
                                        <th data-options="field:'tipo'" width="30">Tipo</th> 
                                        <th data-options="field:'url'" width="250">Link</th> 
                                        <th data-options="field:'level'" width="30">Nivel</th> 
                                        <th data-options="field:'order'" width="30">Orden</th>
                                    </tr>
                                </thead>
                            </table>
                            <div id="mm" class="easyui-menu" style="width:120px;">
                                <div onclick="append()" data-options="iconCls:'icon-add'">Add</div>
                                <div onclick="removeIt()" data-options="iconCls:'icon-remove'">Delete</div>
                                <div onclick="editIt()" data-options="iconCls:'icon-edit'">Edit</div>
                                <div class="menu-sep"></div>
                                <div class="menu-sep"></div>
                                <div onclick="collapse()">Collapse</div>
                                <div onclick="expand()">Expand</div>
                            </div>
                            <div id="alerta-no" class="easyui-window" title="Error agregando ítem" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:300px;height:200px;padding:10px;">
                                No puede agregar hijos aquí. El ítem no es un nodo de menú.
                            </div> 
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe  src="..." id="actionMenu" name="actionMenu"></iframe>
                </div>
            </div>
        </div>
    </body>
</html>
