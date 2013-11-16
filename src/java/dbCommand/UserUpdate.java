/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package dbCommand;

import databaseinterface.DBCommandHandler;
import entities.Futurepreneur;
import entities.Investor;
import entities.User;
import java.sql.SQLException;

/**
 *
 * @author root
 */
public class UserUpdate {
    
      /*
   * Update a pet record.
   */
  public boolean addUser(User person) {
    boolean fut = true;
    DBCommandHandler dbComHand = new DBCommandHandler();
    String futCommand = "INSERT INTO futurepreneurs VALUES(";
    String invCommand = "INSERT INTO investors VALUES(";
    String command = "INSERT INTO users VALUES(";
    command += "'" + person.getFirstName() + "'";
    command += ", '" + person.getLastName() + "'";
    command += ", '" + person.getUserName() + "'";
    command += ", '" + person.getAccountNumber() + "'";
    command += ", '" + person.getPassword() + "'";
    command += ", '" + person.getEmail() + "'";
    command += ")";
    
    if ( person instanceof Futurepreneur)
    {
        Futurepreneur person2 = (Futurepreneur)person;
        futCommand += "'" + person2.getAccountNumber() + "'";
        futCommand += "'" + person2.getAcademic();
        futCommand += "'" + person2.getGradDate() + "'";
        futCommand += "'" + person2.getGpa() + "'";
        command += ")";
    }
    else if ( person instanceof Investor )
    {
        fut = false;
    }
    
    try {
      int resultCount = dbComHand.doCommand(command);
      if (fut)
          dbComHand.doCommand(futCommand);
      else
          dbComHand.doCommand(invCommand);
      dbComHand.close();
      return (resultCount > 0);
    } catch (SQLException ex) {
      ex.printStackTrace();
      return false;
    }
  }

}
