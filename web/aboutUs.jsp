<?xml version="1.0" encoding="utf-8"?>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="style/aboutUs.css"/>
    </head>
    <body>
       
<!--<!        <div id="container">-->
            <!--<p>container</p>-->
            <jsp:include page="stdhead.jsp"/> <!--we will need a boolean flag that determines whether the user is logged in or not...this will affect which header is displayed-->
           <div id="content-wrap"> 
            <div id="contentArea">
                <jsp:include page="aboutUsContentNavigation.jsp"/>
               
                <div id="content">
                    <h2>About Us</h2>
                    <p>
                        Here is a look at JMU Idea Hub's creators:
                    </p>
                    <p>
                        <ul>
                            <li>
                                <h3>Joseph Otis</h3>
                                <p class="byline">Database Designer</p>
                            </li>
                            <p></p>
                            <li>
                                <h3>Sean Moran</h3>
                                <p class="byline">Title Here</p>

                            </li>
                            <p></p>
                            <li>
                                <h3>Brandon Schimmel</h3>
                                <p class="byline">Title Here</p>
                            </li>
                            <p></p>
                            <li>
                                <h3>Anthony Sutton</h3>
                                <p class="byline">Title Here</p>

                            </li>
                            <p></p>
                            <li>
                                <h3>Thomas Wray</h3>
                                <p class="byline">User Interface Programmer and CSS</p>

                            </li>
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
