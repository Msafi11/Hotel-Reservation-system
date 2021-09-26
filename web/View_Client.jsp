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
 <script src="showclient.js"> </script>
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
  
  
   
        
        
        <section class="banner" style="height: 230px" >
   
    <form id="getclientt" name="getclientt"  style="width: 50%; margin-left: 300px" >
     <legend style="text-align: center">GET CLIENT </legend>
      
        
        
        <div class="input-group input-group-lg"><span class="input-group-addon">CLIENT USERNAME</span>
            <input name="CLIENT_USERNAME" id="CLIENT_USERNAME" type="text" class="form-control" onkeyup="sendInfo()" >
</div>
     
        
        
      
      
    </form>
           
            
            

        </section>
    <br>
    <div id="getclienty" name="getclienty"> </div>
    
    
        
        <%
            
             Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                Statement Stmt2 = null;
                Statement Stmt3 = null;
                Statement Stmt4 = null;
                Statement Stmt5 = null;
                Statement Stmt6 = null;
                
                ResultSet rs = null;
                ResultSet rs2 = null;
                ResultSet rs3 = null;
                ResultSet rs4 = null;
                
                
               
                
                
                
                
                
                
                
                String query = "Select COUNT(*) from fondok.reservations";
               
            SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date(System.currentTimeMillis());
            
            
           /* java.util.Date FD1=  formatter.parse( request.getParameter("FROM_Date")); 
            java.sql.Date FROMDate= new java.sql.Date( FD1.getTime() );
            
            java.util.Date TD1= formatter.parse( request.getParameter("TO_Date")); 
            java.sql.Date TODate= new java.sql.Date( TD1.getTime() );*/
           
           
            String query2 = "SELECT * FROM fondok.customer WHERE customerUsername = '" + request.getParameter("CLIENT_USERNAME") + "'";
            String query3 = "SELECT * FROM fondok.reservations WHERE customerUsername = '" + request.getParameter("CLIENT_USERNAME") + "'";
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt2 = Con.createStatement();
                Stmt3 = Con.createStatement();
                Stmt4 = Con.createStatement();
                Stmt5 = Con.createStatement(); %>
                
                
                
                
                
                
                
            
  <br>
  
  <section class="banner" style="height: 300px" >
   
      <form id="form5" name="form5"  style="width: 50%; float: left" >
     <legend style="text-align: center">CONFIRM RESERVATION</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Reservation ID</span>
          <input type="text" class="form-control" placeholder="Reservation ID" name="RTOCONF">
        </div>
        
        
        <input type="submit" class="form-control" name="CONFIRM" value="CONFIRM" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("CONFIRM")) != null && (request.getParameter("CONFIRM")).equals("CONFIRM") ){
             
          
            
           rs3 = Stmt3.executeQuery("SELECT * FROM fondok.reservations WHERE  reservationID = " + Integer.parseInt(request.getParameter("RTOCONF")) +" AND typee='pending'" );
           
        if(rs3.isBeforeFirst())
        {
            String Confirm = "UPDATE fondok.reservations SET typee ='confirmed' WHERE reservationID =  " + Integer.parseInt(request.getParameter("RTOCONF"));
            Stmt4.executeUpdate(Confirm);
            
            
        


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='View_Client.jsp';">&times;</span> 
  <strong>Congrats!</strong>  Reservation  Successfully Confirmed!
     </div>
       <% }
else{
response.sendRedirect("AdminHome.jsp");
}}
  %>
  
  <form id="form6" name="form6"  style="width: 50%; float: right" >
     <legend style="text-align: center">CANCEL RESERVATION</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Reservation ID</span>
          <input type="text" class="form-control" placeholder="Reservation ID" name="RTOCANCEL">
        </div>
        
        
        <input type="submit" class="form-control" name="CANCEL" value="CANCEL" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("CANCEL")) != null && (request.getParameter("CANCEL")).equals("CANCEL") ){
             
          
            
           rs4 = Stmt4.executeQuery("SELECT * FROM fondok.reservations WHERE  reservationID = " + Integer.parseInt(request.getParameter("RTOCANCEL")) +" AND typee='pending'" );
           
        if(rs4.isBeforeFirst())
        {
            String CANCEL = "DELETE FROM fondok.reservations WHERE reservationID =  " + Integer.parseInt(request.getParameter("RTOCANCEL"));
            Stmt5.executeUpdate(CANCEL);
            
            
        


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='View_Client.jsp';">&times;</span> 
  <strong>Congrats!</strong>  Reservation  Successfully CANCELED!
     </div>
       <% }
else{
response.sendRedirect("AdminHome.jsp");
}}
  %>
  
           
          
      
   
  </section>
  
  
  
  
  
  <
  
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="hero_header">FOR THE LATEST NEWS &amp; UPDATES</p>
    <div class="button">subscribe</div>
  </section>
  
  <div class="copyright">&copy;2021 - <strong>FONDOK BOOKING</strong></div>
</div>

</body>
</html>
