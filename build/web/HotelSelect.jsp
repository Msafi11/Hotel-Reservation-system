<%-- 
    Document   : HotelSelect
    Created on : Jan 8, 2021, 5:34:07 PM
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
    <title>Fondok Booking</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap-4.4.1.css" rel="stylesheet">
    <link rel="icon" href="logo.png">
  </head>
  <body>
      <%
          Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
                
                PreparedStatement ps = null;
                
                
                String country = request.getParameter("WHERE");
                
                session.setAttribute("DIST", country);
                session.setAttribute("CheckIn", request.getParameter("CheckIn"));
                session.setAttribute("CheckOut", request.getParameter("CheckOut"));
                
                
                String getHotel = "SELECT * FROM `fondok`.`hotel` WHERE `country` = '" + country + "'";
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                rs = Stmt.executeQuery(getHotel);
                int numOfAdults = Integer.parseInt(request.getParameter("numOfAdults"));
                int numOfChilds = Integer.parseInt(request.getParameter("numOfChilds"));
                session.setAttribute("adults", numOfAdults);
                session.setAttribute("childs", numOfChilds);

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
<hr>
    <div class="container">
        
<div class="row" style="margin-left: 200px">
    
    <div class="col-lg-8 col-12">
      <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="logo.png" height="55px" alt="Card image cap">
                <div class="card-body">
                    <% rs.next(); %>
                    <h5 class="card-title"><%=rs.getString("hotelName")%></h5>
                    <% int rating = rs.getInt("rating"); %>
      
      <h6> <%while(rating > 0){%>  &#11088; </h6> <% rating = rating-1; } %>
                   
                    <h6 class="card-text">Availability: <%=rs.getString("availability")%></h6>
                    <h6 class="card-text">Price: <%= Integer.parseInt(rs.getString("ePrice"))    * numOfAdults * numOfChilds  %></h6>
                    <form action="SeeMore.jsp" method="get">
                        <% String v = "'"+ rs.getString("hotelName") + "'"; %>
                        <button name="SeeMore" type="submit" class="btn btn-primary" onclick="window.location.href='SeeMore.jsp';" value= <%=v%> >See More</button>
                    </form>
                </div>
              </div>
            </div>
        <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="logo.png" height="55px" alt="Card image cap">
                <div class="card-body">
                    <% rs.next(); %>
                  <h5 class="card-title"><%=rs.getString("hotelName")%></h5>
                  <% int rating2 = rs.getInt("rating"); %>
      
      <h6> <%while(rating2 > 0){%>  &#11088; </h6> <% rating2 = rating2-1; } %>
                  <h6 class="card-text">Availability: <%=rs.getString("availability")%></h6>
                  <h6 class="card-text">Price: <%= Integer.parseInt(rs.getString("ePrice"))    * numOfAdults * numOfChilds  %></h6>
                  <form action="SeeMore.jsp" method="get">
                        <% String v2 = "'"+ rs.getString("hotelName") + "'"; %>
                        <button name="SeeMore" type="submit" class="btn btn-primary" onclick="window.location.href='SeeMore.jsp';" value= <%=v2%> >See More</button>
                    </form>
                </div>
              </div>
            </div>
		  
</div>
      <div class="row">
            <div class="col-sm-6 col-12">
              <div class="card">
                <img class="card-img-top" src="logo.png" height="55px" alt="Card image cap">
                <div class="card-body">
                    <% rs.next(); %>
                  <h5 class="card-title"><%=rs.getString("hotelName")%></h5>
                  <% int rating3 = rs.getInt("rating"); %>
      
      <h6> <%while(rating3 > 0){%>  &#11088; </h6> <% rating3 = rating3-1; } %>
                  <h6 class="card-text">Availability: <%=rs.getString("availability")%></h6>
                  <h6 class="card-text">Price: <%= Integer.parseInt(rs.getString("ePrice"))    * numOfAdults * numOfChilds  %></h6>
                  <form action="SeeMore.jsp" method="get">
                        <% String v3 = "'"+ rs.getString("hotelName") + "'"; %>
                        <button name="SeeMore" type="submit" class="btn btn-primary" onclick="window.location.href='SeeMore.jsp';" value= <%=v3%> >See More</button>
                    </form>
                </div>
              </div>
            </div>
        <div class="col-sm-6 col-12">
          <div class="card">
                <img class="card-img-top" src="logo.png" height="55px" alt="Card image cap">
            <div class="card-body">
                <% rs.next(); %>
                  <h5 class="card-title"><%=rs.getString("hotelName")%></h5>
                  <% int rating4 = rs.getInt("rating"); %>
      
      <h6> <%while(rating4 > 0){%>  &#11088; </h6> <% rating4 = rating4-1; } %>
                  <h6 class="card-text">Availability: <%=rs.getString("availability")%></h6>
                  <h6 class="card-text">Price: <%= Integer.parseInt(rs.getString("ePrice"))    * numOfAdults * numOfChilds  %></h6>
                  <form action="SeeMore.jsp" method="get">
                        <% String v4 = "'"+ rs.getString("hotelName") + "'"; %>
                        <button name="SeeMore" type="submit" class="btn btn-primary" onclick="window.location.href='SeeMore.jsp';" value= <%=v4%> >See More</button>
                    </form>
            </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        
</div>

</div>
    <hr>
    
    
    
    <section class="banner" style="height: 230px" >
   
        <form id="form1" name="form1" method="GET" action="HotelSelect.jsp" style="width:100%; float: none" >
     <legend style="text-align: center">Filter Search</legend>
      <div>
        <div class="input-group input-group-lg"><span class="input-group-addon">MAX Price</span>
            <input type="num" min="100" max="1000" class="form-control" placeholder=" Enter MAX Price" name="maxprice" required>
        </div>
        <div class="input-group input-group-lg"> </div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Rate</span>
            <input name="Rate" type="num" min="1" max="5" class="form-control"placeholder=" Enter Rate" required >
</div>
        <div class="input-group input-group-lg"><span class="input-group-addon">Distnce From City</span>
          <input name="CITY" type="text" class="form-control" placeholder="Distnce From City(FAR-CLOSE)" required>
          
        </div>
        <input type="submit" class="form-control" name="filter" value="filter" style="color: white;background-color: darkgreen">
      </div>
      
    </form>
      
      
  </section>
    
    
    
    
    
    
    
    
<hr>

    <div class="container">
      <div class="row">
        <div class="col-md-8 col-12">
          <div class="row">
            <div class="col-lg-6 col-12">
              <h3>About Us</h3>
              <hr>
      <p>A fondok booking system is a piece of a software used for reservation management. It allows travel and hospitality businesses to accept bookings online and manage mobile and personal bookings in a better way. Customers simply visit your site, choose the service they would like to book, and fill out a booking form. After that, they pay via a payment gateway which transfers the payment to you. The whole process takes just a few minutes for the first time booking and even less for repeat bookings.</p>
      <p>A fondok booking system is a piece of a software used for reservation management. It allows travel and hospitality businesses to accept bookings online and manage mobile and personal bookings in a better way. Customers simply visit your site, choose the service they would like to book, and fill out a booking form. After that, they pay via a payment gateway which transfers the payment to you. The whole process takes just a few minutes for the first time booking and even less for repeat bookings.</p>
            </div>
            <div class="col-lg-6 col-12">
              <h3>US</h3>
              <hr>
              <div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Mohamed Safi Ahmed</h4>
                20170237 <br>
              21 Year</div>
              <a href="#"><img src="images/safi.png" width="100" alt="" class="thumbnail"/></a> </div>
            <div class="media">
              <div class="media-body">
                <h4 class="mt-0 mb-1">Mahmoud Hamdy Abdu</h4>
                20170264 <br>
              21 Year</div>
                <a href="#"><img src="images/hamdy.png" width="100" alt="" class="thumbnail"/></a> </div>
          </div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-12 mt-md-0 mt-2">
          <h3>Contact Us</h3>
          <hr>
          <address>
            <strong>FONDOK BOOKING, Inc.</strong><br>
            01156353309<br>
            01142892921<br>
            
          </address>
          <address>
            
          </address>
        </div>
      </div>
    </div>
    <footer class="text-center">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <p>Copyright © FONDOK BOOKING. All rights reserved.</p>
          </div>
        </div>
      </div>
    </footer>
    
  </body>
</html>
