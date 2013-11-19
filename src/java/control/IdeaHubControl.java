/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package control;

import dbCommand.UserUpdate;
import entities.Futurepreneur;
import entities.Investor;
import entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
public class IdeaHubControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IdeaHubControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IdeaHubControl at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException { // DO ERROR CHECKINGGGG!!!!!!!!
        // TO SELECT a major query for the majors and put in drop down
        
        String url = request.getRequestURI();
        
        if (url.indexOf("futurepreneurSignUp") > 0)
            doAddFuture(request);
        else if(url.indexOf("investorSignUp") > 0)
            doAddInvestor(request);
        

    }
    
    private void doAddInvestor(HttpServletRequest request)
    {}
    private boolean doAddFuture(HttpServletRequest request)
    {
        boolean added = true;
        User person;
        
        if (validName(request.getParameter("futurepreneurFirstName")) ||
            validName(request.getParameter("futurepreneurLastName")) ||
            validUser(request.getParameter("futurepreneurUsername")) ||
            validPassword(request.getParameter("pwd1")) ||
            validStanding(request.getParameter("gradesel")) ||
            validGPA(request.getParameter("gpa")) ||
            validEmail(request.getParameter("futurepreneurEmail")))
            added = false;
        
        if (added)
        {
            person = new Futurepreneur(request.getParameter("futurepreneurFirstName"), 
            request.getParameter("futurepreneurLastName"),
            request.getParameter("futurepreneurEmail"),
            request.getParameter("pwd1"), request.getParameter("futurepreneurUsername"),
            request.getParameter("gradesel"), new Date(2015, 05, 12),
            Double.parseDouble(request.getParameter("gpa")));
        
            UserUpdate update = new UserUpdate();
            update.addUser(person);
            
            
        }
        
        return added;
    }
    
    /**
     * Checks to make sure the email has an @ char
     * @param email
     * @return true if valid email
     */
    private boolean validEmail(String email)
    {
        if (email.indexOf('@') < 0)
            return false;
        return true;
    }
    /**
     * Checks that gpa is a double to 2 decimal places under 4.0
     * @param gpa
     * @return true if valid gpa
     */
    private boolean validGPA(String gpa)
    {
        Double grade;
        
        try
        {
            grade = Double.parseDouble(gpa);
        }
        catch (Exception e)
        {
            return false;
        }
        
        if (grade.doubleValue() <= 4.0 && grade.doubleValue() > 0.0)
            if ( grade.floatValue() < 100 && grade.floatValue() > 0)
                return true;
        return false;
    }
    
    /**
     * Checks if academic standing is frosh, soph, junior, senior, or senior+
     * @param stand
     * @return true if valid academic standing
     */
    private boolean validStanding(String stand)
    {
        if(!(stand.equalsIgnoreCase("freshman") || stand.equalsIgnoreCase("sophomore")
                || stand.equalsIgnoreCase("junior") || stand.equalsIgnoreCase("senior")
                || stand.equalsIgnoreCase("senior+")))
            return false;
        
        return true;
    }
    /**
     * Makes sure the password is at least 8 chars and under the max
     * amount
     * @param pass
     * @return true if valid password
     */
    private boolean validPassword(String pass)
    {
        if( pass.length() < 8 || pass.length() > 30 )
            return false;
        return true;
    }
    
    /**
     * Makes sure name has no illegal chars
     * @param name
     * @return true if it has no illegal chars
     */
    private boolean validName(String name)
    {
        String badChars = "~`!@#$%^&*()_+=<>?/|\\{}[]:;\".,1234567890";
        name = name.trim();
        
        for (int i = 0; i < badChars.length(); i++)
        {
            if(name.indexOf(badChars.charAt(i)) >= 0)
                return false;
        }
        
        return true;
    }
    
    /**
     * Makes sure there are no illegal email chars
     * Email cannot have more then one '.'
     * @param email
     * @return true if valid
     */
    private boolean validUser(String email)
    {
        String badChars = "~`!@#$%^&*()-+=<>?,;:'\"\\|[]{}/ ";
        
        email = email.trim();
        
        for (int i = 0; i < badChars.length(); i++)
        {
            if(email.indexOf(badChars.charAt(i)) >= 0)
                return false;
        }
        int x = email.indexOf('.');
        if ( x >= 0)
            if ( email.indexOf('.', x) >= 0)
                return false;
        
        return true;
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
