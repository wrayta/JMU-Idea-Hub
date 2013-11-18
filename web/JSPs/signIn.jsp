<?xml version="1.0" encoding="utf-8"?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="../style/signIn.css"/>
    </head>
    <body>
       
<!--<!        <div id="container">-->
            <!--<p>container</p>-->
            <jsp:include page="stdhead.jsp"/>
           <div id="content-wrap"> 
            <div id="contentArea">
               
                <div id="signInLeft">
                <h2>Sign In!</h2>
                
                <div id="signInTable">
                <table cellpadding="5">
                    <tbody>
                        <tr>
                            <td>
                <p><label>
                Username:
                <input type="text" name="username" size="25"/></label></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                <p><label>
                Password:
                <input type="password" name="pwd1" maxlength="25" size="25" /></label></p>
                            </td>
                        </tr>
                </tbody>
                </table>
                </div>
                
                   <div id="signInButton"> <input type="submit" value="Sign In"
                                              name="register"/> </div>           
                </div>
                
                
                
                <div id="content">    
                <h3>Don't have an account?</h3>
                    <p>
                        <ul>
                            <li><a href="investorSignUp.jsp">Register as Investor</a></li>
                    
                    
                            <li><a href="futurepreneurSignUp.jsp">Register as Futurepreneur</a></li>
                        </ul>
                    </p>
                </div>
          
                 <div id="middleContent">
                    
                </div>
                <div style="clear: both;">&nbsp;</div>
            </div>
            </div>
            <jsp:include page="stdfoot.jsp"/>
        <!--</div>-->
            
    </body>
</html>

