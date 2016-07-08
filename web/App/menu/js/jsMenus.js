function desactivarRep() {
    try {
        $("#reporte option[value='0']").attr('selected', 'selected');
        document.getElementById('reporte').disabled = true;
        //document.getElementById('reporte').setAttribute('selectedIndex','0');

    } catch (e) {
        alert(e);
    }

}

function activarRep() {
    document.getElementById('reporte').disabled = false;
}


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
            var url = 'maintenance.jsp';
            modiframe('actionMenu', url);
        }
    }
}
function removeIt() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        var url = 'delete.jsp?nodoPadre=' + node.nodo_padre + '&nodoCod=' + node.id;
        window.open(url);
    }
}

function editIt() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        var url = 'modify.jsp?nodoPadre=' + node.nodo_padre + '&nodoCod=' + node.id;
        window.open(url);
    }
}

function viewRep() {
    var node = $('#tg').treegrid('getSelected');
    if (node) {
        var rep = node.reporte_cod;
        if (!(rep == 0)) {
            var url = '../rep/view.jsp?repCod=' + rep;
            window.open(url);
        }
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

collapseAll();