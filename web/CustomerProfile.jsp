<%-- 
    Document   : CustomerProfile
    Created on : Jan 6, 2021, 2:36:50 PM
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
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FONDOK BOOKING</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <link rel="icon" href="logo.png">
  </head>
  <body style="padding-top: 70px">
      <div class="container">
        <hr>
      <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="#"><img src="logo.png" width="33" height="40" alt=""/>Fondok Booking</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active"> <a class="nav-link" href="HotelSearch.jsp">BOOK A HOTEL <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="MyReservations.jsp">My Reservations</a> </li>
            
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
                
                PreparedStatement ps = null;
                
                String CU =  request.getSession().getAttribute("CU").toString();
                String GetInfo = "SELECT * FROM fondok.customer WHERE customerUsername  = '" + CU + "'" ;
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                rs = Stmt.executeQuery(GetInfo);
                
                   
                session.setAttribute("CUpdate", "1");
                while(rs.next()){
                
          %>
    
      <hr>
      <div class="row">
        <div class="col-6">
            <h1>Hello!  <%=rs.getString("customerName")%></h1>
        </div>
</div>
      <hr>
      <div class="row">
        <div class="col-md-8 col-sm-12">
          <div class="media">
              <img class="mr-3" src=<%=rs.getString("customerPhoto")%>>
            <div class="media-body">
                <p>Name: <%=rs.getString("customerName")%> Username: <%=rs.getString("customerUsername")%>  </p>
                <p>Email : <%=rs.getString("customerEmail")%></p>
              <p>Password: <%=rs.getString("customerPass")%></p>
              
              <p>Mobile: <%=rs.getString("customerMobile")%></p>
              <p>Age: <%=rs.getInt("customerAge")%></p>
            </div>
          </div>
        </div>
</div>
      <% }
%>
<br>
<br>    
<div class="row align-content-center align-items-center">
    <form action="UpdateInfo.jsp" style="margin-left: 340px; " class="align-content-center align-items-center">
  
  <div class="input-group mb-3">
      <div class="input-group-prepend"> <span class="input-group-text" id="basicaddon2">Name</span> </div>
      <input name="newName" type="text" class="form-control" placeholder="Enter new name" aria-describedby="basicaddon2">
    </div>
    <div class="input-group mb-3">
      <input name="newEmail" type="text" class="form-control" placeholder="Enter new EMail"  aria-describedby="contentaddon2">
      <div class="input-group-append"> <span class="input-group-text" id="contentaddon2">@example.com</span> </div>
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend"> <span class="input-group-text">Age</span> </div>
      <input name="newAge" type="text" class="form-control" placeholder="Enter new Age" >
      <div class="input-group-append"> </div>
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend"> <span class="input-group-text" id="basicaddon3">Mobile</span> </div>
      <input name="newMobile" type="text" class="form-control" placeholder="Enter new Mobile number" aria-describedby="basicaddon3">
    </div>
    <div class="input-group mb-3">
      <div class="input-group-prepend"> <span class="input-group-text">Password</span> </div>
      <input name="newPass" type="text" class="form-control" placeholder="Enter new Password" >
      <div class="input-group-append"> </div>
    </div>
    <button type="submit"  style="margin-left: 120px" class="btn btn-primary">Update Info</button>
</form>
</div>
<hr>
<hr>
      <footer class="text-center">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <p>Copyright © FONDOK BOOKING. All rights reserved.</p>
            </div>
          </div>
        </div>
      </footer>
    </div>
    
    
  </body>
</html>
