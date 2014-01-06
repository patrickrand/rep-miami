/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Patrick
 */
public class RepsViewController extends HttpServlet
{
    private static final String API_KEY = "AIzaSyCN9rkEJ848kuw9-YO7vZ41Mt7v2bhckcs";
    private String address;
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       // HttpSession session = request.getSession();
       // session.setAttribute("strApiKey", API_KEY);
        request.setAttribute("apiKey", API_KEY);
        loadAddress(request,response);
        request.getRequestDispatcher("/WEB-INF/repsView.jsp").forward(request, response);
        
        /*
        PrintWriter out = response.getWriter();
        try {
           
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RepsViewController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RepsViewController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
        */
    }
    
    protected void loadAddress(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        String street = request.getParameter("inputAddress");
        String city = request.getParameter("dropdownCity");
        address = street + ", " + city + " FL";
        request.setAttribute("inputAddress", address);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        processRequest(request, response);
        String street = request.getParameter("inputAddress");
        String city = request.getParameter("dropdownCity");
        String addr = street + ", " + city + " FL";
        request.setAttribute("inputAddress", addr);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */

}
