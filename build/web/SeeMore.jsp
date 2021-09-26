<%-- 
    Document   : SeeMore
    Created on : Jan 9, 2021, 8:14:39 PM
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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Fondok Booking</title>
<link href="css/simpleGridTemplate.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-4.4.1.css" rel="stylesheet" type="text/css">
<link rel="icon" href="logo.png">
<link rel="stylesheet" href="rate.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body >
    <%
          Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
                
                Statement Stmt2 = null;
                ResultSet rs2 = null;
                
                Statement Stmt3 = null;
                ResultSet rs3 = null;
                
                Statement Stmt4 = null;
                
                
                
                String HotelName = request.getParameter("SeeMore");
                String CU = session.getAttribute("CU").toString();
                
                   
                    session.setAttribute("HN", HotelName);
                
                String getHotel = "SELECT * FROM `fondok`.`hotel` WHERE `hotelName` = '" + HotelName + "'";
                String getPhotos = "SELECT * FROM `fondok`.`hotelphotos` WHERE `HotelName` = '" + HotelName + "'";
                String getLocation = "SELECT `location` FROM `fondok`.`hotel` WHERE `HotelName` = '" + HotelName + "'";
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt4 = Con.createStatement();
                
                rs = Stmt.executeQuery(getHotel);
                
                
                %>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
<nav  class="navbar navbar-expand-lg navbar-dark bg-dark" >
  <a class="navbar-brand" href="#" <img src="logo.png" width="33" height="40" alt=""/> Fondok Booking</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="HotelSearch.jsp">Search For Hotel <span class="sr-only">(current)</span></a>
          </li>
          
          
        </ul>
        <form class="form-inline my-2 my-lg-0">
<button class="btn btn-outline-danger my-2 my-sm-0" type="submit">Logout</button>
        </form>
      </div>
    </nav>
<!-- Main Container -->
<div class="container"> 
  <!-- Header -->
  <!-- Hero Section -->
  
  <section style="width: 1200px; margin-left: -36px" class="intro">
    <div class="column">
        <% while(rs.next()){ %>
        <h3>&#9969; <%=rs.getString("hotelName")%> &#9969;</h3>
        <h3><%= Integer.parseInt(rs.getString("rooms"))%> Rooms Are Available &#9989;</h3>
      <h3>Rooms Are <%=rs.getString("roomtype")%> &#127379; </h3>
      <h3><%=rs.getString("roomfacilities")%></h3>
      <% int rating = rs.getInt("rating"); %>
      
      <h3> <%while(rating > 0){%>  &#11088; </h3> <% rating = rating-1; } %>
          
      <%  }%>
      
    </div>
      
  </section>
    <div class="row align-content-center align-items-center">
    
      

      

        <form >
  <input type="file" id="myFile" name="filename">
  <input type="submit" name="submit">
</form>

        
          
          
          
      



        
          
    
      
  </div>
  <!-- Stats Gallery Section -->
  <% Stmt2 = Con.createStatement();
      rs2 = Stmt2.executeQuery(getPhotos);
      %>
  <div class="gallery">
      <%
          rs2.next();
          String Photo1 = "'images\\" + rs2.getString("Img") + "'";%>
          <div class="thumbnail"> <a href="#"><img src=<%=Photo1%>  alt="" width="1024px" height="683px" class="cards"/></a>
      <h4>VIEW1</h4>
<p class="text_column"></p>
    </div>
      <%rs2.next(); 
      String Photo2 = "'images\\" + rs2.getString("Img") + "'";%>
    <div class="thumbnail"> <a href="#"><img src=<%=Photo2 %> alt="" width="1024px" height="683px" class="cards"/></a>
      <h4>VIEW2</h4>
<p class="text_column"></p>
    </div>
    <%rs2.next();
    String Photo3 = "'images\\" + rs2.getString("Img") + "'";%>
    <div class="thumbnail"> <a href="#"><img src=<%=Photo3 %> alt="" width="1024px" height="683px" class="cards"/></a>
      <h4>VIEW2</h4>
<p class="text_column"></p>
    </div>
    <%rs2.next();
    String Photo4 = "'images\\" + rs2.getString("Img") + "'";%>
    <div class="thumbnail"> <a href="#"><img src=<%=Photo4 %> alt="" width="1024px" height="683px" class="cards"/></a>
      <h4>VIEW3</h4>
<p class="text_column"></p>
    </div>
      
  </div>
  <div class="gallery">
     
      <% Stmt3 = Con.createStatement(); 
        
                rs3 = Stmt3.executeQuery(getLocation); 
                rs3.next(); %>
      <iframe src= <%=rs3.getString("location")%> width="1110" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
      
  <!-- Footer Section -->
  <footer id="contact">
    <p class="hero_header">READY TO HAVE FUN ?</p>
    <div> <button class="btn btn-light" style="margin-left: 470px" onclick="window.location.href='BookHotel.jsp';"> BOOK THIS HOTEL! </button></div>
    <div><button class="btn btn-light" style="margin-left: 470px" onclick="window.location.href='RateHotel.jsp';"> RATE THIS HOTEL! </button></div>
  </footer>
  <!-- Copyrights Section -->
  <div class="copyright">&copy;2021 - <strong>FONDOK BOOKING</strong></div>
  
</div>
<!-- Main Container Ends -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>

</body>
</html>