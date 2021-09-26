<%-- 
    Document   : UpdateInfo
    Created on : Jan 7, 2021, 12:03:05 AM
    Author     : Safix
--%>
<%@ page import="java.sql.*"%>  
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mail.jsp.SendMail"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FONDOK BOOKING</title>
    </head>
    <body>
        <%
          Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
                
                PreparedStatement ps = null;
                
                
                String newName = request.getParameter("newName");
                String newEmail = request.getParameter("newEmail");
                String newPass = request.getParameter("newPass");
                int newAge = Integer.parseInt(request.getParameter("newAge"));
                String newMobile = request.getParameter("newMobile");
                
                if(request.getSession().getAttribute("CUpdate").toString() == "1")
                {
                    String UpdateInfo = "UPDATE `fondok`.`customer` SET `customerName` = '" + newName + "',`customerEmail` = '" + newEmail + "',`customerAge` = '" + newAge +"',`customerPass` = '" + newPass + "',`customerMobile` = '" + newMobile +"'  WHERE (`customerUsername` = '" + request.getSession().getAttribute("CU").toString() +"');";
                    Con = DriverManager.getConnection(url, userr, password);
                    Stmt = Con.createStatement();
                    Stmt.executeUpdate(UpdateInfo);
                    response.sendRedirect("CustomerProfile.jsp");
                }
                else
                {
                    String UpdateInfo = "UPDATE `fondok`.`admin` SET `name` = '" + newName + "',`email` = '" + newEmail + "',`age` = '" + newAge +"',`pass` = '" + newPass + "',`mobile` = '" + newMobile +"'  WHERE (`username` = '" + request.getSession().getAttribute("AU").toString() +"');";
                    Con = DriverManager.getConnection(url, userr, password);
                    Stmt = Con.createStatement();
                    Stmt.executeUpdate(UpdateInfo);
                    response.sendRedirect("AdminHome.jsp");
                }
                    
                    
                   
                
                
                
                
          %>
    </body>
</html>
