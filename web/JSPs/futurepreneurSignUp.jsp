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
                                    <legend>Personal Information</legend>
        
                    <div id="personalInfo">

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
            
            <fieldset>

            <legend>Personal Information</legend>

            <div id="registerFuturepreneurBody">
            <table cellpadding="5">
            <tbody>
            <tr>
            <td>
            <p><label>Academic Standing:
                <select name="gradesel">
                    <option>Freshman</option>
                    <option>Sophomore</option>
                    <option>Junior</option>
                    <option>Senior</option>
                    <option>Senior+</option>
                    
                </select>
                </label></p>
            </td>
            <td>
                <p><label>Major(s):
                 <input type="text" name="major"
                           size="25" />
                </label></p>
            </td>
            </tr>
            <tr>
                <td>
                    <p><label>Minor(s):
                        <input type="text" name="minor"
                               size="25" />
                        </label></p>
                </td>
                <td>
                        <p><label>Graduation Date:
                        <input type="text" name="graduationDate"
                               size="25" />
                            </label></p>
                </td>
            <tr>
                <td>
                <p><label>
                Username:
                <input type="text" name="futurepreneurUsername" size="25"/></label></p>
                </label>
                </td>
            </tr>
            <tr>
                <td>
                    <p><label>
                Password:
                <input type="password" name="pwd1" maxlength="25" size="25" /></label>
                </td>
                <td>
                    <label>Reenter password: <input type="password" name="pwd1" maxlength="25" size="25" /></label></p>
                </td>
            </tr>
            </tbody>
            </table> 

            </div>
            </fieldset>
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
