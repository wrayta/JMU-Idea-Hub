/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbQuery;

import databaseinterface.DBQueryHandler;
import entities.MajorMinor;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Querys the minor table in the database
 *
 * @author Joe Otis Thomas Wray
 */
public class MinorQuery {

    /**
     * Gets the entire minor table
     *
     * @return
     */
    public ArrayList<Object> getMinorTable() {
        String query = "select * from minors";
        ArrayList<Object> result = new ArrayList<Object>(); //Why is this OBJECT???????

        try {

            DBQueryHandler dbQue = new DBQueryHandler();
            ResultSet rs = dbQue.doQuery(query);
            ResultSetMetaData rsmd = rs.getMetaData();

            int numOfCols = rsmd.getColumnCount();
            result.add(new Integer(numOfCols));

            while (rs.next()) {
                int i = 1;
                int majNum = rs.getInt(i++);
                String majName = rs.getString(i++);

                MajorMinor maj = new MajorMinor(majNum, majName);

                result.add(maj);
            }

            dbQue.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return result;
    }

}
