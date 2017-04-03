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
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormatSymbols"%>
<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!--How do we pass a value from a JSP to a servlet?-->
<jsp:useBean id="ideaQ" class="dbQuery.IdeaQuery" /> <!--Add an error page!!!!!!-->

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <title>JMU Idea Hub</title>
        <link rel="stylesheet" type="text/css" href="style/idea.css"/>
        <link href="https://fonts.googleapis.com/css?family=PT+Sans+Narrow|Ranga" rel="stylesheet">

            <%
                if (!(Boolean) request.getSession().getAttribute("loggedin")) {
                    response.sendRedirect("homepage.jsp");
                    return;
                }
            %>

            <script>
                function requestIdeasForMonth(monthNum)
                {
                    console.log("Inside requestIdeasForMonth");
                    
                    var month;
                    
                    if (monthNum === -1) {
                        month = document.getElementById("latestMonth").innerHTML;
                    }
                    
                    else {
                        month = document.getElementById("month" + monthNum).innerHTML;
                    }
                   
                    console.log("The month is: " + month);
                    
                    var xmlhttp;
                    if (window.XMLHttpRequest)
                    {// code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else
                    {// code for IE6, IE5
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    xmlhttp.onreadystatechange = function()
                    {
                        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                        {
                            location.reload();
                        }
                    }

                    xmlhttp.open("GET", "idea?currentMonth=" + month, true);
                    xmlhttp.send();
                }
                
                function createNewIdea() {
                    console.log("Inside createNewIdea");
                    
                    disableBeforeUnload();
                    
                    console.log("After disableBeforeUnload");
                    
                    var latestMonth = document.getElementById("latestMonth").innerHTML;
                    
                    var xmlhttp;
                    
                    if (window.XMLHttpRequest)
                    {// code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else
                    {// code for IE6, IE5
                        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                    }
                    xmlhttp.onreadystatechange = function()
                    {
                        if (xmlhttp.readyState === 4 && xmlhttp.status === 200)
                        {
                            location.reload();
                        }
                    }

                    var idea = document.getElementById("ideaId").value;
                    
                    var title = document.getElementById("titleId").value;
                                        
                    var postData = "idea=" + encodeURIComponent(unescape(idea)) +
                    "&title=" + encodeURIComponent(unescape(title)) +
                    "&latestMonth=" + latestMonth;
                    
                    xmlhttp.open("POST", "idea", false);     
                    xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
                    xmlhttp.setRequestHeader("Content-length", postData.length);
                    xmlhttp.send(postData);
                            
                }
            </script>
    </head>

    <body>

        <jsp:include page="nonstdhead.jsp"/>

        <!--<form action="idea" onsubmit="disableBeforeUnload();" accept-charset="utf-8" method="post">-->
        <form id="newIdeaForm" accept-charset="utf-8">

            <div id="newIdeaContainer">
                <p>
                    <div id="ideaTitle">
                        <input type="text" 
                               class="userInput"
                               id="titleId"
                               name="title" 
                               placeholder="Idea title"
                               onchange="enableBeforeUnload();"
                               onkeyup="enableBeforeUnload();"/>
                    </div>
                </p>
                <p>
                    <div id="ideaTextArea">
                        <textarea name="idea" 
                                  id="ideaId"
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

        </form>
        
        <div id="mySidenav" class="sideNav">
        <%!
            String getMonthForInt(int num) {
                String month = "wrong";
                DateFormatSymbols dfs = new DateFormatSymbols();
                String[] months = dfs.getMonths();
                if (num >= 0 && num <= 11 ) {
                    month = months[num];
                }
                return month;
            }
        %>
        <%                
                Calendar now = Calendar.getInstance();
                
                int month = (now.get(Calendar.MONTH) + 1);
                
                for (int i = 0; i < month; i++) {
                    if(i == month - 1) {
                        String latestMonthStr = getMonthForInt(i);
                        out.print("<a href=\"#\""
                                + "onclick=\"requestIdeasForMonth(" + -1 + ")\"" 
                                + "id=\"latestMonth\"" 
                                + "class=\"month\">"
                                + latestMonthStr
                                + "</a>"); 
                    }
                    else {
                        String monthStr = getMonthForInt(i);
                        out.print("<a href=\"#\""
                                + "onclick=\"requestIdeasForMonth(" + i + ")\"" 
                                + "id=\"month" + i + "\"" 
                                + "class=\"month\">"
                                + monthStr
                                + "</a>");
                    }
                }
        %>
        </div>
 
        <%
//                ArrayList<Object> ideaData = ideaQ.getIdeas();
//                ArrayList<Object> ideaData = ideaQ.getIdeasForMonth(currentMonth);
                ArrayList<Object> ideaData = (ArrayList<Object>) (request.getSession().getAttribute("ideaData"));
                System.out.println("ideaData size: " + ideaData.size());
                Iterator it = ideaData.iterator();
                int rows = ((Integer) it.next()).intValue(); // WHY IS THIS LIKE THISSSSSSSS
                int counter = 1;
                UserQuery usQuery = new UserQuery();

                out.println("<div id=\"ideasList\">");

                while (it.hasNext()) {
                    Idea idea = (Idea) it.next();
                    String name = usQuery.getUserFullName(idea.getAccountNumber());
                    out.println(
                        "<button class=\"accordion\""
                        + ">"
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
                        + "<a class=\"moreIdeaLink\" href=\"idea?ideaNum="
                        + idea.getIdeaNumber() + "\">"
                        + "See More..."
                        + "</a>"
                        + "</div>"
                        + "</p>"
                        + "</div>");

                    counter++;
                }

                out.println("</div>");
        %>

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <script>
            var acc = document.getElementsByClassName("accordion");
            var i;

            if (acc.length > 0) {
                acc[0].classList.toggle("active");
                var firstPanel = acc[0].nextElementSibling;
                firstPanel.style.maxHeight = firstPanel.scrollHeight + "px";

                for (i = 0; i < acc.length; i++) {
                    acc[i].onclick = function() {
                        this.classList.toggle("active");
                        var panel = this.nextElementSibling;
                        if (panel.style.maxHeight) {
                            panel.style.maxHeight = null;
                        } else {
                            panel.style.maxHeight = panel.scrollHeight + "px";
                        }
                    }
                }
            }

            var months = document.getElementsByClassName("month");
            var topNum = 25;
            var j;

            for (j = 0; j < months.length; j++) {

                months[j].style.top = topNum + "px";
                topNum += 60;
            }

            $(document).ready(function() {

                $('form input[type=submit]').click(function() {
                    if(confirm('Submit idea?')) {
                        disableBeforeUnload();
                        createNewIdea();
                    }
                        
                });

                $('form input[type=reset]').click(function() {
                    return confirm('Discard idea?');
                });

//                $('.month').click(function() {
//                    console.log("month click");
//                    printIdeasForMonth();
//                });
    
            });
            
            function enableBeforeUnload() {
                window.onbeforeunload = function(e) {
                    return "Discard changes?";
                };
            }
            function disableBeforeUnload() {
                window.onbeforeunload = null;
            }
        </script>

    </body>

</html>
