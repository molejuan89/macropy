/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

/**
 *
 * @author AGiraldo
 */
public class StringsSql {

    protected static String SCHEMA = com.mcpy.control.database.ParamDB.SCHEMA;

    public static String SqlMenu(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String SQL_MENU_USER = "select * \n"
                + "from {schema}.nodos n\n"
                + "where exists(select 1\n"
                + "		from {schema}.perfil_nodos pf, {schema}.usuario_perfiles up\n"
                + "		where pf.perfil=up.perfil\n"
                + "		and up.username=user\n"
                + "		and up.tipo='O' \n"
                + "		and n.codigo=pf.nodo_cod\n"
                + "		)"
                + "order by gerarquia,orden,mensaje";

        String SQL_MENU_APP = "select * \n"
                + "from {schema}.nodos n\n"
                + "order by gerarquia,orden,mensaje";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "menu-user":
                tmpSql = SQL_MENU_USER;
                break;
            case "menu-app":
                tmpSql = SQL_MENU_APP;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        System.out.println(OutSql);
        return OutSql;
    }

    public static String SELECT_PERFIL_X = "select * from " + SCHEMA + ".perfiles where codigo=?";
    public static String SELECT_ALL_PERFIL = "select * from " + SCHEMA + ".perfiles";
    public static String CREATE_PERFIL = "insert into " + SCHEMA + ".perfiles (codigo,descripcion,admin_opcion) values (?,?,?)";
    public static String DELETE_PERFIL = "delete  " + SCHEMA + ".perfiles where codigo = ?";
    public static String UPDATE_PERFIL = "update " + SCHEMA + ".perfiles set descripcion=?,admin_opcion=? where codigo=?";

    public static String OBJETOS_PERFIL_X = "select po.name_schema, po.objeto,ao.type, NULLIF(po.sel,'N'), NULLIF(po.ins,'N'), NULLIF(po.upd,'N'), NULLIF(po.del,'N'), NULLIF(po.exc,'N' )\n"
            + "from  " + SCHEMA + ".perfil_objetos po,  " + SCHEMA + ".all_objects ao\n"
            + "where po.name_schema=ao.schema\n"
            + "and po.objeto=ao.name\n"
            + "and perfil=?";

}
