<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="../style/registerInvestor.css"/>

    </head>
    <body>
      <jsp:include page="stdhead.jsp"/>
        <div id="content-wrap"> 
            <div id="contentArea">
        <div id="content">
        <h2>Investor Registration</h2>
        <form method="post"
              action=""> <!--needs to be completed!!!-->
            <fieldset>
                                <legend>Personal Information</legend>

                               <div id="personalInfo">

                   <table cellpadding="5">
                
                <tbody>
                    <tr>
                        <td>
                            <label>Last Name:
                        <input type="text" name="investorLastName"
                               size="25" />
                        </td>
                        <td>
                            <label>First Name:
                        <input type="text" name="investorFirstName"
                               size="25" />
                    </label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Email:
                        <input type="text" name="investorEmail" size="25" />
                    </label>
                        </td>
                        <td>
                             <label>Occupation:
            <input type="text" name="occupation"
                   size="25" /></label>
                        </td>
                    </tr>
                </tbody>
            </table> 
                </div>
            </fieldset>
            
            <p></p>
            <p></p>

           <fieldset>
            <legend>Personal Information</legend>
            <table cellpadding="5">
            <p>Degrees:
            <p>
            <textarea name="degrees" rows="3" cols="35">
            </textarea></p></p>
            
            <p>Certifications:
            <p>
            <textarea name="certifications" rows="3" cols="35">
            </textarea></p></p>
            
            <p>Patents Held:
            <p>
            <textarea name="patents" rows="3" cols="35">
            </textarea></p></p>
            
            <p>Interests:
            <p>
            <textarea name="interests" rows="3" cols="35">
            </textarea></p></p>
      
            <p><label>Website:
            <input type="text" name="website"
                   size="25" /></label></p>
                <p><label>
                Create a password (8-12 characters):
                <input type="password" name="pwd1" maxlength="12" size="12" />
                    </label><label>Reenter password: <input type="password" name="pwd1" maxlength="12" size="12" /></label></p>
            
                <p><input type="checkbox" id="agree" name="agree"/>
            <label for="agree">
                I agree to the rules of the EHSL.
            </label></p>
            </table>
            </fieldset>
            <p><div id="registerInvestor">
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
