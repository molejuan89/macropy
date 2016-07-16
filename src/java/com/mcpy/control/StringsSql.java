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

    public static String SCHEMA = com.mcpy.control.database.ParamDB.SCHEMA;

    public static String Menu(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String MENU_USER = "select * \n"
                + "from {schema}.nodos n\n"
                + "where exists(select 1\n"
                + "		from {schema}.perfil_nodos pf, {schema}.usuario_perfiles up\n"
                + "		where pf.perfil=up.perfil\n"
                + "		and up.username=user\n"
                + "		and up.tipo='O' \n"
                + "		and n.codigo=pf.nodo_cod\n"
                + "		)"
                + "order by gerarquia,orden,mensaje";

        String MENU_APP = "select * \n"
                + "from {schema}.nodos n\n"
                + "order by gerarquia,orden,mensaje";

        String MENU_ADD = "INSERT INTO {schema}.nodos (codigo, gerarquia, nodo_padre, orden, mensaje, url,tipo) VALUES (?,?,?,?,?,?,?);";

        String MENU_DEL = "delete from {schema}.nodos where codigo=?";

        String MENU_UPD = "update {schema}.nodos set gerarquia=?, nodo_padre=?, orden=?, mensaje=?, url=?,tipo=? where codigo=?";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "menu-user":
                tmpSql = MENU_USER;
                break;
            case "menu-app":
                tmpSql = MENU_APP;
                break;
            case "menu-add":
                tmpSql = MENU_ADD;
                break;
            case "menu-del":
                tmpSql = MENU_DEL;
                break;
            case "menu-upd":
                tmpSql = MENU_UPD;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }

    public static String Profile(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String SELECT_ALL_PERFIL = "select * \n"
                + "from {schema}.perfiles\n"
                + "order by codigo";

        String SELECT_PERFIL_X = "select * from {schema}.perfiles where codigo=?";

        String CREATE_PROFILE = "insert into {schema}.perfiles (codigo,descripcion,admin_opcion) values (?,?,?)";

        String DELETE_PERFIL = "delete {schema}.perfiles where codigo = ?";

        String UPDATE_PERFIL = "update {schema}.perfiles set descripcion=?,admin_opcion=? where codigo=?";

        String NEXT = "select nullif(max(codigo),0)+1 from {schema}.perfiles";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "profil-sel-all":
                tmpSql = SELECT_ALL_PERFIL;
                break;
            case "profiles-app":
                tmpSql = SELECT_ALL_PERFIL;
                break;
            case "profil-x":
                tmpSql = SELECT_PERFIL_X;
                break;
            case "profile-add":
                tmpSql = CREATE_PROFILE;
                break;
            case "profile-del":
                tmpSql = DELETE_PERFIL;
                break;
            case "profile-upd":
                tmpSql = UPDATE_PERFIL;
                break;
            case "next":
                tmpSql = NEXT;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }

    public static String ProfilObjects(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String PROFILE_OBJECTS_ALL
                = "SELECT AO.SCHEMA,\n"
                + "	AO.NAME,\n"
                + "	AO.TYPE,\n"
                + "	(CASE Upper(TYPE) \n"
                + "		WHEN 'TABLE' THEN (CASE SEL WHEN 'Y' THEN SEL ELSE 'N' END) \n"
                + "		WHEN 'VIEW' THEN (CASE SEL WHEN 'Y' THEN SEL ELSE 'N' END) \n"
                + "		ELSE 'X' END) AS SEL,\n"
                + "	(CASE Upper(TYPE) \n"
                + "		WHEN 'TABLE' THEN (CASE INS WHEN 'Y' THEN INS ELSE 'N' END) \n"
                + "		WHEN 'VIEW' THEN (CASE INS WHEN 'Y' THEN INS ELSE 'N' END) \n"
                + "		ELSE 'X' END) AS INS,\n"
                + "	(CASE Upper(TYPE) \n"
                + "		WHEN 'TABLE' THEN (CASE DEL WHEN 'Y' THEN DEL ELSE 'N' END) \n"
                + "		WHEN 'VIEW' THEN (CASE DEL WHEN 'Y' THEN DEL ELSE 'N' END) \n"
                + "		ELSE 'X' END) AS DEL,\n"
                + "	(CASE Upper(TYPE) \n"
                + "		WHEN 'TABLE' THEN (CASE UPD WHEN 'Y' THEN UPD ELSE 'N' END) \n"
                + "		WHEN 'VIEW' THEN (CASE UPD WHEN 'Y' THEN UPD ELSE 'N' END) \n"
                + "		ELSE 'X' END) AS UPD,\n"
                + "	(CASE Upper(TYPE) \n"
                + "		WHEN 'TABLE' THEN 'X' \n"
                + "		WHEN 'VIEW' THEN 'X'\n"
                + "		ELSE (CASE EXC WHEN 'Y' THEN EXC ELSE 'N' END) END) AS EXC\n"
                + "FROM {schema}.perfil_objetos PO\n"
                + "	RIGHT JOIN {schema}.all_objects AO\n"
                + "	ON PO.name_schema = AO.schema\n"
                + "	AND PO.objeto=AO.name\n"
                + "	AND PO.PERFIL=?\n"
                + "ORDER BY AO.SCHEMA,AO.NAME";

        String PROFILE_OBJECTS = "select po.name_schema, po.objeto,ao.type, NULLIF(po.sel,'N'), NULLIF(po.ins,'N'), NULLIF(po.upd,'N'), NULLIF(po.del,'N'), NULLIF(po.exc,'N' )\n"
                + "from  " + SCHEMA + ".perfil_objetos po,  " + SCHEMA + ".all_objects ao\n"
                + "where po.name_schema=ao.schema\n"
                + "and po.objeto=ao.name\n"
                + "and perfil=?";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "profil-obj-all":
                tmpSql = PROFILE_OBJECTS_ALL;
                break;
            case "profil-obj":
                tmpSql = PROFILE_OBJECTS;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }

    public static String ProfileNodes(String searchSql) {

        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String PROFILE_NODES = "select nodo_cod, 'Y'\n"
                + "from mcpy.perfil_nodos\n"
                + "where perfil=?\n"
                + "order by 1";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "profil-nodes":
                tmpSql = PROFILE_NODES;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }

    public static String Lists(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String CITIES = "SELECT  lpad(CAST(codigo_depto AS TEXT), 3, '0')||lpad(CAST(codigo_ciudad AS TEXT), 3, '0')  AS Codigo, desc_ciudad ||'('|| desc_depto ||')' AS Nombre\n"
                        +"FROM mcpy.tabla_ciudad C, mcpy.tabla_departamento D\n"
                        +"where D.codigo_dpto=codigo_depto\n"
                        +"order by Nombre";
        
        String TIPO_DOCUMENTO="select nombre_corto ||'('|| descripcion ||')' AS Nombre\n" 
                             +"FROM mcpy.tipo_de_documento;";
        
        String TIPO_TERCERO="select nombre_corto ||'('|| descripcion ||')' AS Nombre\n" 
                            +"FROM mcpy.tipo_de_tercero;";


        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "cities":
                tmpSql = CITIES;
                break;
            case "tipo_doc":
                tmpSql = TIPO_DOCUMENTO;
                break;
            case "tipo_terc":
                tmpSql = TIPO_TERCERO;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }
}
