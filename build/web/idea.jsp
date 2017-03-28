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
        <!--<link href="//cdnjs.cloudflare.com/ajax/libs/jquery-form-validator/2.3.26/theme-default.min.css" rel="stylesheet" type="text/css" />-->

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
                
                <form action="idea" onsubmit="disableBeforeUnload();" accept-charset="utf-8" method="post">
                    <!--<h1>Ideas</h1>-->

                    <!--<center>-->
                        <div id="newIdeaContainer">
                            <p>
                                <div id="ideaTitle">
                                <input type="text" 
                                       class="userInput"
                                       name="title" 
                                       placeholder="Idea title"
                                       onchange="enableBeforeUnload();"
                                       onkeyup="enableBeforeUnload();"/>
                                </div>
                            </p>
                            <p>
                                <div id="ideaTextArea">
                                <textarea name="idea" 
                                          onchange="enableBeforeUnload();"
                                          onkeyup="enableBeforeUnload();"
                                          placeholder="Idea details..."></textarea>
                                </div>
                            </p>
                            <p>
                                <input type="reset" class="ideaReset" value="Cancel"/>
                                <input type="submit" class="ideaSubmit" value="Post"/>
                            </p>
                        </div>
                    <!--</center>-->

                </form>
                
            <!--<center>-->
                <!--<table border="1">-->
                    <%
                        ArrayList<Object> ideaData = ideaQ.getIdeas();
                        Iterator it = ideaData.iterator();
                        int rows = ((Integer) it.next()).intValue(); // WHY IS THIS LIKE THISSSSSSSS
                        int counter = 1;
                        UserQuery usQuery = new UserQuery();
                        
                        out.println("<div id=\"ideasList\">");
                        
                        while (it.hasNext()) {
                            Idea idea = (Idea) it.next();
                            String name = usQuery.getUserFullName(idea.getAccountNumber());
                            out.println(
//                                    + "<tr>"
//                                    + "<td>"
                                    "<button class=\"accordion\""
//                                    + "onclick=" + "\"location.href='idea?ideaNum=" + idea.getIdeaNumber() + "';\""
                                    + ">"
//                                    + "<a href=\"idea?ideaNum="
//                                    + idea.getIdeaNumber() + "\">"
                                    + "<div id=\"listIdeaTitle\">"
                                    + idea.getIdeaTitle() 
                                    + "</div>"
                                    + "<div id=\"listIdeaAuthor\">"
                                    + name
                                    + "</div>"
                                    + "<div id=\"listIdeaDate\">"
                                    + idea.getDate()
                                    + "</div>"
                                    + "</button>"
                                    + "<div class=\"panel\">"
                                    + "<p>"
                                    + "<div id=\"listIdeaContent\">"
                                    + idea.getIdea()
                                    + "</div>"
                                    + "<div id=\"moreIdea\">"
                                    + "<a href=\"idea?ideaNum="
                                    + idea.getIdeaNumber() + "\">" 
                                    + "See More..."
                                    + "</a>"
                                    + "</div>"
                                    + "</p>"
                                    + "</div>");
//                                    + "</a>"
//                                    + "</td>"
//                                    + "</tr>"
                                    
                            counter++;
                        }
                        
                        out.println("</div>");
                    %>
                <!--</table>-->

            <!--</center>-->

        <!--</center>-->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <script>
            var acc = document.getElementsByClassName("accordion");
            var i;
            
            acc[0].classList.toggle("active");
            var firstPanel = acc[0].nextElementSibling;
            firstPanel.style.maxHeight = firstPanel.scrollHeight + "px";
            
            for (i = 0; i < acc.length; i++) {
              acc[i].onclick = function() {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.maxHeight){
                  panel.style.maxHeight = null;
                } else {
                  panel.style.maxHeight = panel.scrollHeight + "px";
                } 
              }
            }
            
            $(document).ready(function() {
                    
                $('form input[type=submit]').click(function() {
                    return confirm('Submit idea?');
                });
                
                $('form input[type=reset]').click(function() {
                    return confirm('Discard idea?');
                });
                
//                $('form input[type=button]').click(function() {
//                    return confirm('Leave current page?');
//                });
            });
            
            function enableBeforeUnload() {
                window.onbeforeunload = function (e) {
                    return "Discard changes?";
                };
            }
            function disableBeforeUnload() {
                window.onbeforeunload = null;
            }
        </script>
        
    </body>
                
</html>
