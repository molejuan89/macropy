/*de aquí en adelanta funciones para jeasyui */
function onContextMenu(e, row) {
    if (row) {
        e.preventDefault();
        $(this).treegrid('select', row.id);
        $('#mm').menu('show', {
            left: e.pageX,
            top: e.pageY
        });
    }
}

function append() {
    var autoriz = 'M';
    var maxGerarquia = 2;
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        if (!(node.tipo === autoriz)) {
            $('#alerta-no').window('open');
        } else if (node.hierarchy > maxGerarquia) {
            $('#alerta-no').window('open');
        } else {
            var uri = 'maintenance.jsp'
                    + '?action=menu-add'
                    + '&message=' + node.message
                    + '&code=' + node.id
                    + '&father=' + node.father
                    + '&type=' + node.tipo
                    + '&order=' + node.order
                    + '&level=' + node.level
                    + '&link=' + node.url
                    ;

            uri = encodeURI(uri);
            console.log(uri);
            modiframe('actionMenu', uri);
        }
    }
}
function removeIt() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        var uri = 'maintenance.jsp'
                + '?action=menu-del'
                + '&message=' + node.message
                + '&code=' + node.id
                + '&father=' + node.father
                + '&type=' + node.tipo
                + '&order=' + node.order
                + '&level=' + node.level
                + '&link=' + node.url
                ;

        uri = encodeURI(uri);
        console.log(uri);
        modiframe('actionMenu', uri);
    }
}

function editIt() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        var uri = 'maintenance.jsp'
                + '?action=menu-upd'
                + '&message=' + node.message
                + '&code=' + node.id
                + '&father=' + node.father
                + '&type=' + node.tipo
                + '&order=' + node.order
                + '&level=' + node.level
                + '&link=' + node.url
                ;

        uri = encodeURI(uri);
        console.log(uri);
        modiframe('actionMenu', uri);
    }
}


function collapse() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        $('#tg').treegrid('collapse', node.id);
    }
}
function expand() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        $('#tg').treegrid('expand', node.id);
    }
}

function collapseAll() {
    $('#tg').treegrid('collapseAll');
}
function expandAll() {
    $('#tg').treegrid('expandAll');
}
