<%-- 
    Document   : MyReservations
    Created on : Jan 12, 2021, 8:06:08 PM
    Author     : Safix
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>  
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mail.jsp.SendMail"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>FONDOK BOOKING</title>
<link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="showrating.js"> </script>
<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
<link rel="icon" href="logo.png">



</head>

<body style="padding-top: 70px" >

<div class="container"> 
    <hr>
    <nav  style="width: 100%" class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="index.html"><img src="logo.png" width="33" height="40" alt=""/>Fondok Booking</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active"> <a class="nav-link" href="AdminHome.jsp">RETURN HOME <span class="sr-only">(current)</span></a> </li>
            
            
          </ul>
         
<button onclick="window.location.href='index.html';" class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
          
        </div>
  </nav>
  
  
    <%
        Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                
        
                
                ResultSet rs = null;
               
                 Con = DriverManager.getConnection(url, userr, password);
                
                
                
                
                
                
                
                
                
        %>
        
        <section style="align-content: center; align-items: center; "  class="banner" id="hero">
             
            <form id="showrating"  name="showrating"> 
                <legend style="text-align: center">GET Ratings </legend>
                <div class="input-group input-group-lg"><span class="input-group-addon">HOTEL NAME</span>
<input type="text" name="hotel" class="form-control" id="hotel" onkeyup="sendInfo()">
                </div>

</form>
<br>
<div style="height: 3px;" id="bebo"> </div>


 

 
</section>
        <br>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
  
  
  
  
  
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="hero_header">FOR THE LATEST NEWS &amp; UPDATES</p>
    <div class="button">subscribe</div>
  </section>
  
  <div class="copyright">&copy;2021 - <strong>FONDOK BOOKING</strong></div>
</div>

</body>
</html>
