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
        
        User person;
        // String first, String last, String email, String password,
        //    String userName, String academic, Date gradDate,
        //    double gpa
        //if (request.getParameter("").equals("F"))
        //{
             person = new Futurepreneur(request.getParameter("futurepreneurFirstName"), 
                     request.getParameter("futurepreneurLastName"),
                     request.getParameter("futurepreneurEmail"),
                     request.getParameter("pwd1"), request.getParameter("futurepreneurUsername"),
                     request.getParameter("gradesel"), new Date(2015, 05, 12),
                     Double.parseDouble(request.getParameter("gpa")));
        //}
        //else
          //  person = new Investor();
        
        UserUpdate update = new UserUpdate();
        update.addUser(person);
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
