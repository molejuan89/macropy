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

        String CREATE_ROLE = "CREATE ROLE ? NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION";

        String USAGE_SCHEMA = "GRANT USAGE ON SCHEMA {schema} TO ?";

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
            case "create-role":
                tmpSql = CREATE_ROLE;
                break;
            case "usage-schema":
                tmpSql = USAGE_SCHEMA;
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

        String PROFILE_OBJECTS_DEL_ALL
                = "delete from mcpy.perfil_objetos\n"
                + "where perfil=?";

        String PROFILE_OBJECTS_INS = "insert into mcpy.perfil_objetos (perfil,name_schema,objeto,sel,ins,del,upd,exc)\n"
                + "values (?,?,?,?,?,?,?,?)";

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
            case "profil-objects-del-all":
                tmpSql = PROFILE_OBJECTS_DEL_ALL;
                break;
            case "profil-objects-ins":
                tmpSql = PROFILE_OBJECTS_INS;
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
                + "from {schema}.perfil_nodos\n"
                + "where perfil=?\n"
                + "order by 1";

        String PROFILE_NODES_DEL_ALL = "delete from {schema}.perfil_nodos where perfil=?";

        String PROFILE_NODES_INS = "insert into {schema}.perfil_nodos (perfil,nodo_cod) values (?,?)";

        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "profil-nodes":
                tmpSql = PROFILE_NODES;
                break;
            case "profil-nodes-del-all":
                tmpSql = PROFILE_NODES_DEL_ALL;
                break;
            case "profil-nodes-ins":
                tmpSql = PROFILE_NODES_INS;
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
        String CITIES = "Select * \n"
                + "from {schema}.tabla_ciudad \n"
                + "order by codigo";


        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "cities":
                tmpSql = CITIES;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }

    public static String User(String searchSql) {
        String tmpSql = "";
        String OutSql = "";

        /*############################################
         # Aquí todos los SQL's
         #############################################*/
        String SELECT_ALL_USER = "select username, cedula, nombres, apellido1, apellido2, telefono, email, expira_pass, '', expira_account \n"
                + "from {schema}.usuario\n"
                + "order by username";

        String USER_INS = "INSERT INTO {schema}.usuario(username, cedula, nombres, apellido1, apellido2, telefono, email, expira_pass, expira_account) \n"
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        String CREATE_USER_DB = "";
        
        /*############################################
         # Aquí todos las acciones para buscar SQL's
         #############################################*/
        switch (searchSql) {
            case "user-sel-all":
                tmpSql = SELECT_ALL_USER;
                break;
            case "user-add":
                tmpSql = USER_INS;
                break;
            case "user-add-db":
                tmpSql = CREATE_USER_DB;
                break;
        }

        OutSql = tmpSql.replace("{schema}", SCHEMA);
        return OutSql;
    }
}
