package databaseinterface;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.*;

/*
 * An abstract parent class for database handlers. This class loads
 * database access parameters from web.xml and loads the database
 * driver class.
 * @author Dr. Grove used by Team 3
 */
public abstract class DBHandler {
  protected String driverName = null, url = null, userId = null, password = null;
  protected Connection con;
  protected Statement stmt;
  protected boolean isOpen = false;

  /*
   * Get parameters required to open DBMS connection.
   */
  public DBHandler() {
    try {
      Context envCtx = (Context) (new InitialContext()) // what does this line do????????
          .lookup("java:comp/env");
      driverName = "com.mysql.jdbc.Driver";
      Class.forName(driverName);
      url = "jdbc:mysql://cs347.cs.jmu.edu/team03_db";
      userId = "team03";
      password = "d*e*lta*";
    } catch (NamingException e) {
      e.printStackTrace(); // should we do this????????
    } catch (ClassNotFoundException e) {
      e.printStackTrace();
    }
  }
  
  /*
   * Open the DB connection
   */
  public void open() throws SQLException {
    con = DriverManager.getConnection(url, userId, password);
    stmt = con.createStatement();
    isOpen = true;
  }
  
  /*
   * Close the DB connection
   */
  public void close() throws SQLException {
    stmt.close();
    con.close();
    isOpen = false;
  }
  
  //public void checkin()

  //public something checkout()
}