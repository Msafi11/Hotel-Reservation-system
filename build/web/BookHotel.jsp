<%-- 
    Document   : BookHotel
    Created on : Jan 11, 2021, 6:30:17 PM
    Author     : Safix
--%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mail.jsp.SendMail"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FONDOK BOOKING</title>
        <link rel="icon" href="logo.png">
    </head>
    <body>
        <%
            try{
                String CU =  request.getSession().getAttribute("CU").toString();
                String HN =  request.getSession().getAttribute("HN").toString();
                 Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String user = "root";
                String password = "root";
                Connection Con = null;
                Connection Con2 = null;
                Statement Stmt = null;
                ResultSet rs = null;
                PreparedStatement ps = null;
                
                SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
                Date date = new Date(System.currentTimeMillis());
                
                
                
                String CHIN= session.getAttribute("CheckIn").toString();
                java.util.Date CHIN1= formatter.parse( CHIN); 
                
                java.sql.Date CheckIn= new java.sql.Date( CHIN1.getTime() ); 
                
                
                String CHOUT= session.getAttribute("CheckOut").toString();
                java.util.Date CHOUT1= formatter.parse( CHOUT); 
                
                java.sql.Date CheckOUT= new java.sql.Date( CHOUT1.getTime() ); 
                
               
                
                String addR = "INSERT INTO `fondok`.`reservations` (`customerUsername`, `hotelName`, `reservationDate`,`CheckIn`,`CheckOut`  ) VALUES ( ?, ? ,?,?,?)";
                
                Con = DriverManager.getConnection(url, user, password);
                
               ps = Con.prepareStatement(addR);
               ps.setString (1,CU);
               ps.setString (2,HN);
               ps.setDate(3, date);
               ps.setDate(4, CheckIn);
               ps.setDate(5, CheckOUT);
               ps.executeUpdate();
               
               response.sendRedirect("CustomerProfile.jsp");
                
            }
            catch (Exception ex) {
                ex.printStackTrace();
                out.close();
            }
            %>
    </body>
</html>
