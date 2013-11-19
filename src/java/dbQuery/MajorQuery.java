/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dbQuery;

import databaseinterface.DBQueryHandler;
import entities.Major;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author root
 */
public class MajorQuery {
    
    public ArrayList<Object> getMajorTable()
    {
        String query = "select * from majors";
        ArrayList<Object> result = new ArrayList<Object>(); //Why is this OBJECT???????
        
        try{
        
            DBQueryHandler dbQue = new DBQueryHandler();
            ResultSet rs = dbQue.doQuery(query);
            ResultSetMetaData rsmd = rs.getMetaData();
            
            int numOfCols = rsmd.getColumnCount();
            result.add(new Integer(numOfCols));
            
            while (rs.next())
            {
                int i = 1;
                int majNum = rs.getInt(i++);
                String majName = rs.getString(i++);
                
                Major maj = new Major(majNum, majName);
                result.add(maj);
            }
            
            dbQue.close();
            
        } catch (SQLException ex)
        {
            ex.printStackTrace();
        }
        
        return result;
    }
    
}
