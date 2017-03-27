<%-- 
    Document   : idea
    Author     : Thomas Wray Joe Otis
--%>
<%@page import="entities.Investor"%>
<%@page import="entities.User"%>
<%@page import="dbQuery.UserQuery"%>
<%@page import="entities.Idea"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!--How do we pass a value from a JSP to a servlet?-->
<jsp:useBean id="ideaQ" class="dbQuery.IdeaQuery" /> <!--Add an error page!!!!!!-->

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="style/idea.css"/>

        <%
            if (!(Boolean) request.getSession().getAttribute("loggedin")) {
                response.sendRedirect("homepage.jsp");
                return;
            }
        %>

    </head>

    <body>
        
        <jsp:include page="nonstdhead.jsp"/>

        <!--<center>-->
                
                <form action="idea" accept-charset="utf-8" method="post">
                    <!--<h1>Ideas</h1>-->

                    <!--<center>-->
                        <div id="newIdeaContainer">
                            <p>
                                <div id="ideaTitle">
                                <input type="text" 
                                       class="userInput"
                                       name="title" 
                                       placeholder="Idea Title"/>
                                </div>
                            </p>
                            <p>
                                <div id="ideaTextArea">
                                <textarea name="idea" 
                                          placeholder="Idea details"></textarea>
                                </div>
                            </p>
                            <p>
                                <input type="reset" class="ideaReset" value="Cancel"/>
                                <input type="submit" class="ideaSubmit" value="Post"/>
                            </p>
                        </div>
                    <!--</center>-->

                </form>
                
            <center>
                <table border="1">
                    <%
                        ArrayList<Object> ideaData = ideaQ.getIdeas();
                        Iterator it = ideaData.iterator();
                        int rows = ((Integer) it.next()).intValue(); // WHY IS THIS LIKE THISSSSSSSS
                        int counter = 1;
                        while (it.hasNext()) {
                            Idea idea = (Idea) it.next();
                            out.println("<p><tr><td><a href=\"idea?ideaNum="
                                    + idea.getIdeaNumber() + "\">"
                                    + idea.getIdeaTitle() + "</a></td></tr></p>");
                            counter++;
                        }
                    %>
                </table>

            </center>

        <!--</center>-->

    </body>
</html>
