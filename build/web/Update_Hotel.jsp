<%-- 
    Document   : MyReservations
    Created on : Jan 12, 2021, 8:06:08 PM
    Author     : Safix
--%>

<%@page import="com.mail.jsp.SendMail2"%>
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
<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
<link rel="icon" href="logo.png">


</head>
<body style="padding-top: 70px" >

<div class="container"> 
    <hr>
    <nav  style="width: 100%" class="navbar fixed-top navbar-expand-lg navbar-light bg-light"> <a class="navbar-brand" href="#"><img src="logo.png" width="33" height="40" alt=""/>Fondok Booking</a>
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
               Statement Stmt2 = null;
                Statement Stmt3 = null;
                Statement Stmt4 = null;
                Statement Stmt5 = null;
                Statement Stmt6 = null;
                Statement Stmt7 = null;
                Statement Stmt8 = null;
                Statement Stmt9 = null;
                Statement Stmt10 = null;
                Statement Stmt11 = null;
                Statement Stmt12 = null;
                Statement Stmt13 = null;
                Statement Stmt14 = null;
                Statement Stmt15 = null;
                ResultSet rs = null;
                ResultSet rs2 = null;
                ResultSet rs3 = null;
                 ResultSet rs4 = null;
               
                
                
                
                
                
                
               
               
                
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt2 = Con.createStatement();
                Stmt3 = Con.createStatement();
                Stmt4 = Con.createStatement();
                Stmt5 = Con.createStatement();
                Stmt6 = Con.createStatement();
                Stmt7 = Con.createStatement();
                Stmt8 = Con.createStatement();
                Stmt9 = Con.createStatement();
                Stmt10 = Con.createStatement();
                Stmt11 = Con.createStatement();
                Stmt12 = Con.createStatement();
                Stmt13 = Con.createStatement();
                Stmt14 = Con.createStatement();
                Stmt15 = Con.createStatement();
                
               
                
                
        %>

  
  <section class="banner" style="height: 324px" >
   
    <form id="form11" name="form11" method="post" style="width: 50%; float: left" >
     <legend style="text-align: center">Update Hotel Basic Information</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Hotel Name</span>
          <input type="text" class="form-control" placeholder="Enter Hotel Name" name="HotelName">
        </div>
        
        <div class="input-group input-group-lg"><span class="input-group-addon">New Phone Number</span>
          <input name="NEW_Phone" type="text" class="form-control" placeholder="Enter New Phone Number">
</div>
        <div class="input-group input-group-lg"><span class="input-group-addon">New Facilties</span>
          <input name="NEW_Facilties" type="text" class="form-control" placeholder="Enter New Facilties">
          
        </div>
          <div class="input-group input-group-lg"><span class="input-group-addon">New Location</span>
          <input name="NEW_Location" type="text" class="form-control" placeholder="Enter New Location">
          
        </div>
          <div class="input-group input-group-lg"><span class="input-group-addon">New Branches</span>
          <input name="NEW_Branches" type="text" class="form-control" placeholder="Enter New Branches">
          
        </div>
        <input type="submit" class="form-control" name="UpdateHotel" value="UpdateHotel" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("UpdateHotel") != null)){
            
            
            
            
           rs = Stmt.executeQuery("SELECT * FROM fondok.hoteldata WHERE HotelName =  '"+ request.getParameter("HotelName") + "'");
           
        if(rs.next())
        {
            String Update = "UPDATE fondok.hoteldata SET Mobile = '" + request.getParameter("NEW_Phone") +"' WHERE HotelName = '"+ request.getParameter("HotelName") +"'";
            Stmt2.executeUpdate(Update);
            
            String Update2 = "UPDATE fondok.hoteldata SET facilities = '" + request.getParameter("NEW_Facilties") +"' WHERE HotelName = '"+ request.getParameter("HotelName") +"'";
            Stmt3.executeUpdate(Update2);
            
            String Update3 = "UPDATE fondok.hoteldata SET location = '" + request.getParameter("NEW_Location") +"' WHERE HotelName = '"+ request.getParameter("HotelName") +"'";
            Stmt4.executeUpdate(Update3);
            
            String Update4 = "UPDATE fondok.hoteldata SET branches = '" + request.getParameter("NEW_Branches") +"' WHERE HotelName = '"+ request.getParameter("HotelName") +"'";
            Stmt5.executeUpdate(Update4);
            
            
        }


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='Update_Hotel.jsp';">&times;</span> 
  <strong>Congrats!</strong> Hotel Data Successfully Changed!
     </div>
       <% }
  %>
  
  
  <form id="form12" name="form13" method="post" style="width: 50%; float: right" >
     <legend style="text-align: center">Update Hotel Photos</legend>
      <div>
          <div class="input-group input-group-lg"><span class="input-group-addon">Hotel Name</span>
          <input type="text" class="form-control" placeholder="Enter Hotel Name" name="HotelName2">
        </div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Photo 1</span>
          <input type="file" class="form-control" id="file1" name="photo1">
        </div>
        
        <div class="input-group input-group-lg"><span class="input-group-addon">Photo 2</span>
          <input type="file" class="form-control" id="file2" name="photo2">
        </div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Photo 3</span>
          <input type="file" class="form-control" id="file3" name="photo3">
        </div>
          <div class="input-group input-group-lg"><span class="input-group-addon">Photo 4</span>
          <input type="file" class="form-control" id="file4" name="photo4">
        </div>
          
        <input type="submit" class="form-control" name="UpdatePhotos" value="UpdatePhotos" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("UpdatePhotos") != null)){
            
            
            
            
           rs2 = Stmt6.executeQuery("SELECT * FROM fondok.hotelphotos WHERE HotelName =  '"+ request.getParameter("HotelName2") + "'");
           
        if(rs2.next())
        {
            String Photo1 = "'" + request.getParameter("photo1") + "'";
            String Updatee = "UPDATE fondok.hotelphotos SET Img = " + Photo1 +" WHERE HotelName = '"+ request.getParameter("HotelName2") +"'";
            Stmt7.executeUpdate(Updatee);
            
            String Photo2 = "'" + request.getParameter("photo2") + "'";
            rs2.next();
            String Updatee2 = "UPDATE fondok.hotelphotos SET Img = " + Photo2 +" WHERE HotelName = '"+ request.getParameter("HotelName2") +"'";
            Stmt8.executeUpdate(Updatee2);
            
            String Photo3 = "'" + request.getParameter("photo3") + "'";
            rs2.next();
            String Updatee3 = "UPDATE fondok.hotelphotos SET Img = " + Photo3 +" WHERE HotelName = '"+ request.getParameter("HotelName2") +"'";
            Stmt9.executeUpdate(Updatee3);
            
            String Photo4 = "'" + request.getParameter("photo4") + "'";
            rs2.next();
            String Updatee4 = "UPDATE fondok.hotelphotos SET Img = " + Photo4 +" WHERE HotelName = '"+ request.getParameter("HotelName2") +"'";
            Stmt10.executeUpdate(Updatee4);
            
            
        }


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='Update_Hotel.jsp';">&times;</span> 
  <strong>Congrats!</strong> Hotel Photos  Successfully Changed!
     </div>
       <% }
  %>
           
          
      
    
  </section>
  
  <br>
  
  <section class="banner" style="height: 324px" >
   
    <form id="form11" name="form11" method="post" style="width: 50%; float: left" >
     <legend style="text-align: center">ADD Hotel ROOM</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Hotel Name</span>
          <input type="text" class="form-control" placeholder="Enter Hotel Name" name="HotelName3">
        </div>
        
        
        <input type="submit" class="form-control" name="ADDROOM" value="ADD ROOM" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("ADDROOM") != null)){
            
            
            
            
           rs3 = Stmt11.executeQuery("SELECT * FROM fondok.hotel WHERE HotelName =  '"+ request.getParameter("HotelName3") + "'");
           
        if(rs3.next())
        {
            String Updateee = "UPDATE fondok.hotel SET rooms = rooms + 1  WHERE HotelName = '" + request.getParameter("HotelName3")+"'";
            Stmt12.executeUpdate(Updateee);
            
            
            
            
        }


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='Update_Hotel.jsp';">&times;</span> 
  <strong>Congrats!</strong> ROOM Successfully ADDED!
     </div>
       <% }
  %>
  
  
  <form id="form12" name="form13" method="post" style="width: 50%; float: right" >
     <legend style="text-align: center">Update Rooms Data</legend>
      <div>
          <div class="input-group input-group-lg"><span class="input-group-addon">Hotel Name</span>
          <input type="text" class="form-control" placeholder="Enter Hotel Name" name="HotelName4">
        </div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Room Type</span>
          <input type="text" class="form-control" id="roomtype" placeholder="Enter Room Type(High-Low-Mid)"name="roomtype">
        </div>
        
        <div class="input-group input-group-lg"><span class="input-group-addon">Room Facilities</span>
          <input type="text" class="form-control" id="Facilities"placeholder="Enter Room Facilities" name="roomfac">
        </div>
        
          
        <input type="submit" class="form-control" name="UpdateRoom" value="Update Room" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("UpdateRoom") != null)){
            
            
            
            
           rs4 = Stmt13.executeQuery("SELECT * FROM fondok.hotel WHERE HotelName =  '"+ request.getParameter("HotelName4") + "'");
           
        if(rs4.next())
        {
            
            String Updateeee = "UPDATE fondok.hotel SET roomtype = '" + request.getParameter("roomtype") +"' WHERE HotelName = '"+ request.getParameter("HotelName4") +"'";
            Stmt14.executeUpdate(Updateeee);
            
            String Updateeee2 = "UPDATE fondok.hotel SET roomfacilities = '" + request.getParameter("roomfac") +"' WHERE HotelName = '"+ request.getParameter("HotelName4") +"'";
            Stmt15.executeUpdate(Updateeee2);
            
            
        }


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='Update_Hotel.jsp';">&times;</span> 
  <strong>Congrats!</strong> Room Successfully Changed!
     </div>
       <% }
  %>
           
          
      
    
  </section>
  
  
  
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="hero_header">FOR THE LATEST NEWS &amp; UPDATES</p>
    <div class="button">subscribe</div>
  </section>
  
  <div class="copyright">&copy;2021 - <strong>FONDOK BOOKING</strong></div>
</div>

</body>
</html>
