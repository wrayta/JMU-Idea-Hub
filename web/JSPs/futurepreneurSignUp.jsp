<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="../style/registerFuturepreneur.css"/>

    </head>
    <body>
      <jsp:include page="stdhead.jsp"/>
        <div id="content-wrap"> 
            <div id="contentArea">
        <div id="content">
        <h2>Futurepreneur Registration</h2>
        <form method="post"
              action="../idea">
                  
                <fieldset>
                               <div id="personalInfo">

                <legend>Personal Information</legend>
                   <table cellpadding="5">
                
                <tbody>
                    <tr>
                        <td>
                            <label>Last Name:
                        <input type="text" name="futurepreneurLastName"
                               size="25" />
                            </label>
                        </td>
                        <td>
                            <label>First Name:
                        <input type="text" name="futurepreneurFirstName"
                               size="25" />
                    </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>GPA:
                        <input type="text" name="gpa" size="25" />
                    </label>
                        </td>
                        <td>
                            <label>Email:
                        <input type="text" name="futurepreneurEmail" size="25" />
                    </label>
                        </td>
                        
                    </tr>
                </tbody>
            </table> 
                </div>
            </fieldset>
                   
            <p><label>Academic Standing:
                <select name="gradesel">
                    <option>Freshman</option>
                    <option>Sophomore</option>
                    <option>Junior</option>
                    <option>Senior</option>
                    <option>Senior+</option>
                    
                </select>
                </label></p>
            
                <p><label>Major(s):
                        <input type="text" name="major"
                               size="25" />
                    </label></p>
            
                    <p><label>Minor(s):
                        <input type="text" name="minor"
                               size="25" />
                        </label></p>
            
                        <p><label>Expected Graduation Date:
                        <input type="text" name="graduationDate"
                               size="25" />
                            </label></p>
                <p><label>
                Username:
                <input type="text" name="futurepreneurUsername"/></label></p>
                </label>
                <p><label>
                Password (8-12 characters):
                <input type="password" name="pwd1" maxlength="12" size="12" />
                    </label><label>Reenter password: <input type="password" name="pwd1" maxlength="12" size="12" /></label></p>
            
                <p><input type="checkbox" id="agree" name="agree"/>
            <label for="agree">
                I agree to the rules of the EHSL.
            </label></p>
            
            <p><div id="registerFuturepreneur">
             <input type="submit" value="Register"
                        name="register"/>
             <a href="../JSPs/homepage.jsp"><input type="button" value="Cancel" /></a>
            
             <input type="reset" value="Reset Form" /> 
            </div></p>
      
        </form>
        </div>
        <div style="clear: both;">&nbsp;</div>
            </div>
           </div>
      <jsp:include page="stdfoot.jsp"/>

    </body>
</html>
