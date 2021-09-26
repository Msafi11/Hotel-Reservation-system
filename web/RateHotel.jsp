<%-- 
    Document   : HotelSearch
    Created on : Jan 8, 2021, 4:16:50 PM
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
    <title>FONDOK BOOKING</title>
    <script src="TestCaptcha.js">
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
    
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <link rel="stylesheet" href="HotelSearch.css">
    <link rel="stylesheet" href="rate.css">
    
    <link rel="icon" href="logo.png">
  </head>
  <body>
      <% Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
                
                int rate = 0;
                
                String HotelName = session.getAttribute("HN").toString();
                String CU = session.getAttribute("CU").toString();
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                %>
      
    <div class="container">

        <form id="search" >

        <div class="header">
        
            
            <img src="icon.png"  style=" margin-top: -15px;float:right;width:140px;height:85px;">
            <h3>Rate A Hotel</h3>
            
            
            
            <p>You want to fill out this form</p>
            
        </div>
        
        

        
            <div>
            
        <input type="radio" name="rate5" id="rate-5">
        <label for="rate-5" class="fas fa-star"></label>
        <input type="radio" name="rate4" id="rate-4">
        <label for="rate-4" class="fas fa-star"></label>
        <input type="radio" name="rate3" id="rate-3">
        <label for="rate-3" class="fas fa-star"></label>
        <input type="radio" name="rate2" id="rate-2">
        <label for="rate-2" class="fas fa-star"></label>
        <input type="radio" name="rate1" id="rate-1">
        <label for="rate-1" class="fas fa-star"></label>
        <input cols="30" name="comment" placeholder="Describe your experience.."> 
        <input type="submit" name="RATE" id="submit" value="RATE">
         
        

    </form>
</div>

</div>
      <% if((request.getParameter("RATE")) != null )
      {
          if((request.getParameter("rate5")) != null)
          {
              rate = 5;
          }
          else if((request.getParameter("rate4")) != null)
          {
              rate = 4;
          }
          else if((request.getParameter("rate3")) != null)
          {
              rate = 3;
          }
          else if((request.getParameter("rate2")) != null)
          {
              rate = 2;
          }
          else
          {
              rate = 1;
          }
          
          Stmt.executeUpdate("INSERT INTO fondok.rating (hotelName,customerUsername,stars,comment) VALUES ('" + HotelName +"','" + CU +"','" +rate +"','" +request.getParameter("comment") +"')");
          response.sendRedirect("CustomerProfile.jsp");
      }
              %>
      
      
      
      
      
      
      
      
      <script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>

    
  </body>
  
</html>




