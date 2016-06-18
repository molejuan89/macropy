package com.mcpy.control.database;

import java.sql.*;

/**
 *
 * @author Andres F. Giraldo
 */
public final class Database {

    protected Connection conexion;
    protected String strConexionFinal, classForName, strConexion, server, port, database, user, password;

    public Database(String classForName, String strConexion, String server, String port, String database, String user, String password) throws Exception, SQLException {
        this.classForName = classForName;
        this.strConexion = strConexion;
        this.server = server;
        this.port = port;
        this.database = database;
        this.user = user;
        this.password = password;

    }

    public Database(String type, String server, String database, String user, String password) {
        if (type.equalsIgnoreCase("ORACLE")) {
            this.classForName = CLASS_FORNAME_ORACLE;
            this.strConexion = STR_CONEXION_ORACLE;
            this.port = PORT_DEFAULT_ORACLE;
        } else if (type.equalsIgnoreCase("MYSQL")) {
            this.classForName = CLASS_FORNAME_MYSQL;
            this.strConexion = STR_CONEXION_MYSQL;
            this.port = PORT_DEFAULT_MYSQL;
        } else if (type.equalsIgnoreCase("POSTGRESQL")) {
            this.classForName = CLASS_FORNAME_POSTGRESQL;
            this.strConexion = STR_CONEXION_POSTGRESQL;
            this.port = PORT_DEFAULT_POSTGRESQL;
        }
        this.server = server;
        this.database = database;
        this.user = user;
        this.password = password;
    }

    public Database(String type, String server, String port, String database, String user, String password) {
        if (type.equalsIgnoreCase("ORACLE")) {
            this.classForName = CLASS_FORNAME_ORACLE;
            this.strConexion = STR_CONEXION_ORACLE;
        } else if (type.equalsIgnoreCase("MYSQL")) {
            this.classForName = CLASS_FORNAME_MYSQL;
            this.strConexion = STR_CONEXION_MYSQL;
        } else if (type.equalsIgnoreCase("POSTGRESQL")) {
            this.classForName = CLASS_FORNAME_POSTGRESQL;
            this.strConexion = STR_CONEXION_POSTGRESQL;
        }
        this.server = server;
        this.port = port;
        this.database = database;
        this.user = user;
        this.password = password;
    }

    public boolean conectar() throws Exception, SQLException {
        boolean estado = false;
        try {
            Class.forName(classForName);
            strConexionFinal = strConexion;
            strConexionFinal = strConexionFinal.replace("<SERVER>", server);
            strConexionFinal = strConexionFinal.replace("<PORT>", port);
            strConexionFinal = strConexionFinal.replace("<DATABASE>", database);
            System.out.println(strConexionFinal);
            conexion = DriverManager.getConnection(strConexionFinal, user, password);
            estado = true;
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return estado;
    }

    public ResultSet consultar(String sql) throws SQLException {
        //System.out.println(sql + "\n");
        ResultSet resultado = null;
        try {
            Statement sentencia;
            sentencia = getConexion().createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            resultado = sentencia.executeQuery(sql);
            return resultado;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }

    }

    public String[][] toMatrizTitle(String sql) throws SQLException {
        ResultSet rs;
        rs = consultar(sql);

        String obj[][] = null;

        try {
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();

            int numCols = rsmd.getColumnCount();
            int numFils = rs.getRow() + 1;

            obj = new String[numFils][numCols];

            rs.beforeFirst();

            for (int i = 0; i < numCols; i++) {
                obj[0][i] = rsmd.getColumnName(i + 1);
            }

            int j = 1;
            while (rs.next()) {
                for (int i = 0; i < numCols; i++) {
                    obj[j][i] = rs.getObject(i + 1).toString();
                }
                j++;
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return obj;
    }

    public String[][] toMatriz(String sql) throws SQLException {
        ResultSet rs;
        rs = consultar(sql);
        String obj[][] = null;

        try {
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();

            int numCols = rsmd.getColumnCount();
            int numFils = rs.getRow();

            obj = new String[numFils][numCols];

            rs.beforeFirst();

            int j = 0;
            while (rs.next()) {
                for (int i = 0; i < numCols; i++) {
                    obj[j][i] = rs.getObject(i + 1).toString();
                }
                j++;
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return obj;
    }

    public String[] toArray(String sql) throws SQLException {
        ResultSet rs;
        rs = consultar(sql);
        String obj[] = null;

        try {
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();

            int numCols = rsmd.getColumnCount();
            int numFils = 1;

            obj = new String[numCols];

            rs.first();

            for (int i = 0; i < numCols; i++) {
                obj[i] = rs.getObject(i + 1).toString();
            }

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return obj;
    }

    public String getSysDate(String format) {
        String fecha = "";
        try {
            String a[] = toArray(
                    "Select to_char(sysdate,'" + format + "') as fecha\n"
                    + "from dual");
            fecha = a[0];
        } catch (Exception e) {
            fecha = "";
        }
        return fecha;
    }

    public Connection getConexion() {
        return conexion;
    }

    public String getUser() {
        return user;
    }

    public String getDatabase() {
        return database;
    }

    protected String CLASS_FORNAME_MYSQL = "org.gjt.mm.mysql.Driver";
    protected String CLASS_FORNAME_ORACLE = "oracle.jdbc.OracleDriver";
    protected String CLASS_FORNAME_POSTGRESQL = "org.postgresql.Driver";

    protected String STR_CONEXION_MYSQL = "jdbc:mysql://<SERVER>:<PORT>/<DATABASE>";
    protected String STR_CONEXION_ORACLE = "jdbc:oracle:thin:@<SERVER>:<PORT>:<DATABASE>";
    protected String STR_CONEXION_POSTGRESQL = "jdbc:postgresql://<SERVER>:<PORT>/<DATABASE>";

    protected String PORT_DEFAULT_MYSQL = "3306";
    protected String PORT_DEFAULT_ORACLE = "1521";
    protected String PORT_DEFAULT_POSTGRESQL = "5432";
}
