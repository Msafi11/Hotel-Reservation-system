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
   
    <form id="form1" name="form3" method="post" style="width: 50%; margin-left: 300px" >
     <legend style="text-align: center">GET RESERVATIONS IN PERIOD </legend>
      <div>
        
        
        <div class="input-group input-group-lg"><span class="input-group-addon">FROM Date</span>
          <input name="FROM_Date" type="date" class="form-control">
</div>
        <div class="input-group input-group-lg"><span class="input-group-addon">TO Date</span>
          <input name="TO_Date" type="date" class="form-control">
          
        </div>
        <input type="submit" class="form-control" name="GET" value="GET" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
        </section>
        
        <%
            
             Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                Statement Stmt2 = null;
        
                
                ResultSet rs = null;
                
                
               
                
                
                
                
                
                
                
                String query = "Select COUNT(*) from fondok.reservations";
                String query2 = "SET @row_number = 0;";
            SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date(System.currentTimeMillis());
            
            
           /* java.util.Date FD1=  formatter.parse( request.getParameter("FROM_Date")); 
            java.sql.Date FROMDate= new java.sql.Date( FD1.getTime() );
            
            java.util.Date TD1= formatter.parse( request.getParameter("TO_Date")); 
            java.sql.Date TODate= new java.sql.Date( TD1.getTime() );*/
            String query3 = "SELECT * FROM fondok.reservations WHERE '" + request.getParameter("FROM_Date") +"' <= reservationDate AND '" +request.getParameter("TO_Date") +"' >= reservationDate";
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt2 = Con.createStatement();
                
                
                Stmt.executeQuery(query2);
                
                
            if(request.getParameter("GET") != null){
            rs=Stmt2.executeQuery(query3);

            
            %>
        
        
        
        
  <section style="align-content: center; align-items: center; "  class="hero" id="hero">
    <table width="100%"  border="5" style="margin-top:-135px; table-layout: fixed">
      <caption style="color: black;font-size: 30px; font-family:Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; text-decoration:underline; text-align: center">
        Current  Reservations
      </caption>
      <tbody style="text-align: center">
        <tr >
          <th style="color:black;font-size: 16px;text-align: center" scope="col">ReservationID </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Client UserName </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Hotel Name</th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Reservation Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Check In Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Check Out Date </th>
          
        </tr>
        <%
            while(rs.next()){
        
       
                    
        %>
        <tr>
          <td><%=rs.getInt("reservationID")%></td>  
          <td><%=rs.getString("customerUsername")%></td>
          <td><%=rs.getString("hotelName")%></td>
          <td><%=rs.getDate("reservationDate")%></td>
          <td><%=rs.getDate("CheckIn")%></td>
          <td><%=rs.getDate("CheckOut")%></td>
        </tr>
        <% }}

  %>
        
        
      </tbody>
    </table>
</section>
  
  
  
  <footer>
    <article class="footer_column">
      <h3 style="color: white">ABOUT</h3>
      <img src="images/placeholder.jpg" alt="" width="400" height="200" class="cards"/>
      <p>A fondok booking system is a piece of a software used for reservation management. It allows travel and hospitality businesses to accept bookings online and manage mobile and personal bookings in a better way. Customers simply visit your site, choose the service they would like to book, and fill out a booking form. After that, they pay via a payment gateway which transfers the payment to you. The whole process takes just a few minutes for the first time booking and even less for repeat bookings.</p>
    </article>
    <article class="footer_column">
      <h3 style="color: white">LOCATION</h3>
      <img src="images/placeholder.jpg" alt="" width="400" height="200" class="cards"/>
<p>Address: 1B El-Nozha, Street, Nasr City, Cairo Governorate
Address: 505 Abd El-Moneim Riad Abd El-Khalik Tharwat, First 6th of October, Giza Governorate
Address: Khalid Ibn El Waleed, First New Cairo, Cairo Governorate
Address: Gameat Al Dewal Al Arabeya, Gazirat Mit Oqbah,Giza Governorate
Address: New Maadi،, 10 Street 261, Ezbet Fahmy, El Basatin, Cairo Governorate
Address: 1351 Kamal El- Deen HUssein، Nile Corniche
Address: Area A-City Center, 5th District, Road 90، Cairo Governorate
Address: Street 29, First New Cairo, Cairo Governorate
Address: 15 Kably El Oyoun St، Old Cairo, Cairo Governorate
Address: El-Horeya, Al Sheikh Zayed, Giza Governorate </p>    </article>
  </footer>
  
  <section class="footer_banner" id="contact">
    <h2 class="hidden">Footer Banner Section </h2>
    <p class="hero_header">FOR THE LATEST NEWS &amp; UPDATES</p>
    <div class="button">subscribe</div>
  </section>
  
  <div class="copyright">&copy;2021 - <strong>FONDOK BOOKING</strong></div>
</div>

</body>
</html>
