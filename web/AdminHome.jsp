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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
  </head>
  <body style="padding-top: 70px">
      
      <%
          Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                Con = DriverManager.getConnection(url, userr, password);
                Statement StmtNotification = null;
                ResultSet rsNotification = null;
                StmtNotification = Con.createStatement();
                rsNotification = StmtNotification.executeQuery("SELECT * FROM fondok.cancel");
                        
      %>
      <div class="container">
        <hr>
      <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="index.html"><img src="logo.png" width="33" height="40" alt=""/>Fondok Booking</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
          <ul class="navbar-nav mr-auto">
            
            <li class="nav-item active"> <a class="nav-link" href="Show_In_Out.jsp">Show Check In&Out <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="View_Current_Reservations.jsp">View Current Reservations <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="View_Reservations_History.jsp">View Reservations History <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="View_Client.jsp">View Client <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="View_Ratings.jsp">View Ratings <span class="sr-only">(current)</span></a> </li>
            <li class="nav-item active"> <a class="nav-link" href="Update_Hotel.jsp">Update Hotel <span class="sr-only">(current)</span></a> </li>
          </ul>
         <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Notifications
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <% while(rsNotification.next()){ %>
      
      <a class="dropdown-item-disable" href="#">Customer <%=rsNotification.getString("customerUsername")%> Has been Cancel a Reservation With an ID:<%=rsNotification.getInt("RID")%> </a>
    <%}%>
  </div>
</div>
<button onclick="window.location.href='index.html';" class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
          
        </div>
  </nav>
      <%
          
                
                Statement Stmt = null;
                ResultSet rs = null;
                
                PreparedStatement ps = null;
                
                String AU =  request.getSession().getAttribute("AU").toString();
                String GetInfo = "SELECT * FROM fondok.admin WHERE username  = '" + AU + "'" ;
                
                Stmt = Con.createStatement();
                rs = Stmt.executeQuery(GetInfo);
                while(rs.next()){
                
          %>
    
      <hr>
      <div class="row">
        <div class="col-6">
            <h1>Hello!  <%=rs.getString("name")%></h1>
        </div>
</div>
      <hr>
      <div class="row">
        <div class="col-md-8 col-sm-12">
          <div class="media">
              <img class="mr-3" src=<%=rs.getString("photo")%>>
            <div class="media-body">
                <p>Name: <%=rs.getString("name")%> Username: <%=rs.getString("username")%>  </p>
                <p>Email : <%=rs.getString("email")%></p>
              <p>Password: <%=rs.getString("pass")%></p>
              
              <p>Mobile: <%=rs.getString("mobile")%></p>
              <p>Age: <%=rs.getInt("age")%></p>
            </div>
          </div>
        </div>
</div>
      <% }
%>
<br>
<br>    
<div class="row align-content-center align-items-center">
<form action="UpdateAdminProfile.jsp" style="margin-left: 340px; " class="align-content-center align-items-center">
  
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
<button type="submit" style="margin-left: 120px" class="btn btn-primary">Update Info</button>
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
