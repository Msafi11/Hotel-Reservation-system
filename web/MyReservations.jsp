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
            <li class="nav-item active"> <a class="nav-link" href="CustomerProfile.jsp">RETURN HOME <span class="sr-only">(current)</span></a> </li>
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
                Statement Stmt2 = null;
                Statement Stmt3 = null;
                Statement Stmt4 = null;
                Statement Stmt5 = null;
                Statement Stmt6 = null;
                Statement Stmt7 = null;
                Statement Stmt8 = null;
                
                ResultSet rs = null;
                ResultSet rs3 = null;
                ResultSet rs6 = null;
                
                SimpleDateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
                Date date = new Date(System.currentTimeMillis());
                
                
                PreparedStatement ps = null;
                
                String CU =  request.getSession().getAttribute("CU").toString();
                String query = "Select COUNT(*) from fondok.reservations";
                String query2 = "SET @row_number = 0;";
                String query3 = "SELECT (@row_number:=@row_number + 1) AS num,reservationID,hotelName,reservationDate,CheckIn,CheckOut,typee FROM fondok.reservations WHERE customerUsername = '" + CU +"'" ;
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt2 = Con.createStatement();
                Stmt3 = Con.createStatement();
                Stmt4 = Con.createStatement();
                Stmt5 = Con.createStatement();
                Stmt6 = Con.createStatement();
                Stmt7 = Con.createStatement();
                Stmt8 = Con.createStatement();
                Stmt.executeQuery(query2);
                rs = Stmt2.executeQuery(query3);
        %>
  <section style="align-content: center; align-items: center; "  class="hero" id="hero">
    <table width="100%"  border="5" style="margin-top:-135px; table-layout: fixed">
      <caption style="color: black;font-size: 30px; font-family:Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; text-decoration:underline; text-align: center">
        ALL Reservations
      </caption>
      <tbody style="text-align: center">
        <tr >
          <th style="color:black;font-size: 16px;text-align: center" scope="col">ReservationID </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Hotel Name </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Reservation Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">CheckIn </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">CheckOut </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Type </th>
        </tr>
        <%
                while(rs.next()){
             %>
        <tr>
          <td><%=rs.getInt("reservationID")%></td>
          <td><%=rs.getString("hotelName")%></td>
          <td><%=rs.getDate("reservationDate")%></td>
          <td><%=rs.getDate("CheckIn")%></td>
          <td><%=rs.getDate("CheckOut")%></td>
          <td><%=rs.getString("typee")%></td>
        </tr>
        <% }

  %>
        
        
      </tbody>
    </table>
</section>
  
  <section class="banner" style="height: 230px" >
   
    <form id="form1" name="form1" method="post" style="width: 50%; float: left" >
     <legend style="text-align: center">Change CheckIn & CheckOut Dates</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Reservation ID</span>
          <input type="text" class="form-control" placeholder="Reservation ID" name="RID">
        </div>
        <div class="input-group input-group-lg"> </div>
        <div class="input-group input-group-lg"><span class="input-group-addon">New CheckIn Date</span>
          <input name="NEW_CHECKIN" type="date" class="form-control">
</div>
        <div class="input-group input-group-lg"><span class="input-group-addon">New CheckOut Date</span>
          <input name="NEW_CHECKOUT" type="date" class="form-control" placeholder="placeholder content">
          
        </div>
        <input type="submit" class="form-control" name="CHANGE" value="CHANGE" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      <%
          
          if((request.getParameter("CHANGE") != null)){
            java.util.Date CHIN1= formatter.parse( request.getParameter("NEW_CHECKIN")); 
            java.sql.Date CheckIn= new java.sql.Date( CHIN1.getTime() ); 
            
            
           java.util.Date CHOUT1= formatter.parse( request.getParameter("NEW_CHECKOUT")); 
           java.sql.Date CheckOut= new java.sql.Date( CHOUT1.getTime() ); 
           rs3 = Stmt3.executeQuery("SELECT * FROM fondok.reservations WHERE customerUsername =  '"+ CU + "' AND reservationID = " + Integer.parseInt(request.getParameter("RID")) );
           
        if(rs3.next())
        {
            String Update1 = "UPDATE fondok.reservations SET CheckIn = '" +CheckIn +"' WHERE customerUsername = '"+ CU +"' AND reservationID =  '" + Integer.parseInt(request.getParameter("RID")) + "'";
            Stmt4.executeUpdate(Update1);
            
            String Update2 = "UPDATE fondok.reservations SET CheckOut ='" + CheckOut + "'  WHERE customerUsername = '"+ CU +"' AND reservationID =  '" + Integer.parseInt(request.getParameter("RID")) + "'";
            Stmt5.executeUpdate(Update2);
        }


      %>
      <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='MyReservations.jsp';">&times;</span> 
  <strong>Congrats!</strong> Your Reservation  Successfully Changed.
     </div>
       <% }
  %>
  
           
          
      
    <form id="form2" name="form2" method="post" style="width: 50%; float: right" >
      <legend style="text-align: center">Cancel Reservation </legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Reservation ID</span>
          <input type="text" class="form-control" name="RIDD" placeholder=" Enter Reservation ID">
        </div>
        <input type="submit" class="form-control" name="CANCEL" value="CANCEL" style="color: white;background-color: darkred">
        
      </div>
    </form>
  
  <%
          
          if((request.getParameter("CANCEL") != null)){
              
            
            
           
           rs6 = Stmt6.executeQuery("SELECT * FROM fondok.reservations WHERE customerUsername =  '"+ CU + "' AND reservationID = " + Integer.parseInt(request.getParameter("RIDD")) );
           
        if(rs6.next())
        {
            String DELETE = "DELETE FROM fondok.reservations  WHERE customerUsername = '"+ CU +"' AND reservationID =  '" + Integer.parseInt(request.getParameter("RIDD")) + "'";
            Stmt7.executeUpdate(DELETE);
            SendMail2.sendAdmin(rs6.getString("customerUsername"), Integer.parseInt(request.getParameter("RIDD")));
            
            Stmt8.executeUpdate("INSERT INTO fondok.cancel (RID,customerUsername) VALUES ('" + Integer.parseInt(request.getParameter("RIDD")) +"','" + CU+"') ");
            
            
        }
              %>
              <div class="alert">
  <span  class="closebtn" onclick="this.parentElement.style.display='none'; window.location.href='MyReservations.jsp';">&times;</span> 
  <strong>Congrats!</strong> Your Reservation  Successfully CANCELED!.
     </div>
       <% }
  %>
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
Address: El-Horeya, Al Sheikh Zayed, Giza Governorate </p>
    </article>
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
