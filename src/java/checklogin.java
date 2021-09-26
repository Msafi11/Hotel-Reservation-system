/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Safix
 */
@WebServlet(urlPatterns = {"/checklogin"})
public class checklogin extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String user = "root";
                String password = "root";
                Connection Con = null;
                Connection Con2 = null;
                Statement Stmt = null;
                ResultSet rs = null;
                Statement Stmt2 = null;
                ResultSet rs2 = null;
                String Username = request.getParameter("username");
                String Pass = request.getParameter("password");
                
                if("Admin".equals(request.getParameter("type")))
                {
                    String query = "SELECT *  FROM `fondok`.`admin` WHERE (`username` =   \""+Username+"\" AND `pass` = \"" + Pass +"\")";
                
                
                Con = DriverManager.getConnection(url, user, password);
                Stmt = Con.createStatement();
                rs = Stmt.executeQuery(query);
                
                
                if(rs.isBeforeFirst()){
                    
                    HttpSession session = request.getSession(true);
                   
                    session.setAttribute("AU", Username);
                    
                    
                    rs.close();
                    Stmt.close();
                    Con.close();
                    
                    response.sendRedirect("AdminHome.jsp");
                    
                }
                else{
                    rs.close();
                    Stmt.close();
                    Con.close();
                    
                    response.sendRedirect("SignIn.html");
                    
                    
                    
                }
                }
                else if("Customer".equals(request.getParameter("type")))
                {
                    String query = "SELECT *  FROM `fondok`.`customer` WHERE (`customerUsername` =   \""+Username+"\" AND `customerPass` = \"" + Pass +"\")";
                    
                    
                    Con2 = DriverManager.getConnection(url, user, password);
                    Stmt2 = Con2.createStatement();
                    rs2 = Stmt2.executeQuery(query);
                    
                    
                    if(rs2.isBeforeFirst()){
                        
                        HttpSession session = request.getSession(true);
                        
                        session.setAttribute("CU", Username);
                        
                        
                        rs2.close();
                        Stmt2.close();
                        Con2.close();
                        
                        response.sendRedirect("CustomerProfile.jsp");
                        
                    }
                    else{
                        rs2.close();
                        Stmt2.close();
                        Con2.close();
                        
                        response.sendRedirect("SignUp.html");
                        
                        
                        
                    }
                } 
                
                
               
                
                
                
                
            } catch (Exception ex) {
                ex.printStackTrace();
                out.close();
            }
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
            throws ServletException, IOException {
        processRequest(request, response);
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
