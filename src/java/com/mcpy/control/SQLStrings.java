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
public final class SQLStrings {

    public static String SCHEMA = com.mcpy.control.database.ParamDB.SCHEMA;

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
