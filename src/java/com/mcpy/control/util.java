/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mcpy.control;

import java.sql.*;

/**
 *
 * @author AGiraldo
 */
public class util {

    public static String[][] toMatrizTitle(ResultSet rs) {

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

            rs.clearWarnings();
            int j = 1;
            while (rs.next()) {

                for (int i = 0; i < numCols; i++) {
                    Object iVal = rs.getObject(i + 1);
                    if (rs.wasNull()) {
                        obj[j][i] = "";
                    } else {
                        obj[j][i] = iVal.toString();
                    }
                }
                j++;
            }

        } catch (Exception e) {
            System.out.println("Error afg.util.toMatrizTittle " + e.getMessage());
        }
        return obj;
    }

    public static String[][] toMatrizTitleDataType(ResultSet rs) throws SQLException {

        String obj[][] = null;

        try {
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();

            int numCols = rsmd.getColumnCount();
            int numFils = rs.getRow() + 2;

            obj = new String[numFils][numCols];

            rs.beforeFirst();

            for (int i = 0; i < numCols; i++) {
                obj[0][i] = rsmd.getColumnTypeName(i + 1);
            }

            for (int i = 0; i < numCols; i++) {
                obj[1][i] = rsmd.getColumnName(i + 1);
            }

            rs.clearWarnings();
            int j = 2;
            while (rs.next()) {

                for (int i = 0; i < numCols; i++) {
                    Object iVal = rs.getObject(i + 1);
                    if (rs.wasNull()) {
                        obj[j][i] = "";
                    } else {
                        obj[j][i] = iVal.toString();
                    }
                }
                j++;
            }

        } catch (Exception e) {
            System.out.println("Error afg.util.toMatrizTitleDataType " + e.getMessage());
        } finally {

        }
        return obj;
    }

    public static String[][] toMatriz(ResultSet rs) {
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
                    if (!(rs.getObject(i + 1) == null)) {
                        obj[j][i] = rs.getObject(i + 1).toString();
                    }
                }
                j++;
            }

        } catch (Exception e) {
            System.out.println("Error afg.util.toMatriz: " + e.getMessage());
        }
        return obj;
    }

    public static String[] toArray(ResultSet rs) {
        String obj[] = null;

        try {
            rs.last();
            ResultSetMetaData rsmd = rs.getMetaData();

            int numCols = rsmd.getColumnCount();
            int numFils = 1;

            obj = new String[numCols];

            rs.first();

            for (int i = 0; i < numCols; i++) {
                Object iVal = rs.getObject(i + 1);
                if (rs.wasNull()) {
                    obj[i] = "";
                } else {
                    obj[i] = iVal.toString();
                }
            }

        } catch (Exception e) {
            System.out.println("Error afg.util.toArray :" + e.getMessage());
        }
        return obj;
    }

    public static String capitalizeString(String string) {
        char[] chars = string.toLowerCase().toCharArray();
        boolean found = false;
        for (int i = 0; i < chars.length; i++) {
            if (!found && Character.isLetter(chars[i])) {
                chars[i] = Character.toUpperCase(chars[i]);
                found = true;
            } else if (Character.isWhitespace(chars[i]) || chars[i] == '.' || chars[i] == '\'') { // You can add other chars here
                found = false;
            }
        }
        return String.valueOf(chars);
    }

    public static String columnaExcel(int col) {
        String let = "";
        int ini = 65;
        int abc = 26;
        int bloq = (int) Math.ceil(col / abc);

        if (bloq > 1) {
            for (int i = 1; i < bloq; i++) {
                let = let + "A";
            }
        }

        return let;
    }

    public static String StringBetweenCharacters(String cadena, String desde, String hasta) {
        try {
            //System.out.println("cadena recibida: " + cadena);
            //System.out.println("Desde: " + cadena.indexOf(desde));
            //System.out.println("Hasta: " + cadena.indexOf(hasta));

            cadena = cadena.substring(cadena.indexOf(desde) + 1, cadena.indexOf(hasta));
            //System.out.println("cadena tratada: " + cadena);

        } catch (Exception e) {
            cadena = "";
        }
        return cadena;
    }

    public static String SearchMariz(String[][] a, String tittleColumn) {
        String valor = "";
        for (int i = 0; i < a[0].length; i++) {
            if (tittleColumn.equals(a[0][i])) {
                valor = a[1][i];
                break;
            }
        }
        return valor;
    }

    public static String SearchMariz(String[][] a, String tittleColumn, int filaTittles, int rowResult) {
        String valor = "";
        for (int i = 0; i < a[filaTittles].length; i++) {
            if (tittleColumn.equals(a[filaTittles][i])) {
                valor = a[rowResult][i];
                break;
            }
        }
        return valor;

    }

}
