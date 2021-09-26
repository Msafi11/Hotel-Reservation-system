<%-- 
    Document   : checkclient
    Created on : Jan 15, 2021, 6:58:49 PM
    Author     : Safix
--%>
<%@page import="java.text.SimpleDateFormat"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="showclient.js"> </script>
<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
<link rel="icon" href="logo.png">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           
              String customerUsername=request.getParameter("valure");
        
            
            
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
           
           
            String query2 = "SELECT * FROM fondok.customer WHERE customerUsername = '" + customerUsername + "'";
            String query3 = "SELECT * FROM fondok.reservations WHERE customerUsername = '" + customerUsername + "'";
                Con = DriverManager.getConnection(url, userr, password);
                Stmt = Con.createStatement();
                Stmt2 = Con.createStatement();
                Stmt3 = Con.createStatement();
                Stmt4 = Con.createStatement();
                Stmt5 = Con.createStatement();
                
                
                
                
                
                
                
            
            rs=Stmt2.executeQuery(query3);
            rs2 = Stmt.executeQuery(query2);
            String CLIENTUN = customerUsername;
            
            
            %>
        
        
        
        
  <section style="align-content: center; align-items: center; height: 450px "  class="hero" id="hero">
      <table width="30%"   border="5" style="margin-top:-135px; table-layout: fixed; float: left; ">
      <caption style="color: black;font-size: 30px; font-family:Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; text-decoration:underline; text-align: center">
        
      </caption>
      <tbody style="text-align: center">
        <tr >
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Customer Name </th>
          
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Customer Email</th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Customer Mobile</th>
          
          
        </tr>
        <%
            while(rs2.next()){
        
       
                    
        %>
        <tr>
          <td><%=rs2.getString("customerName")%></td>  
          
          <td><%=rs2.getString("customerEmail")%></td>
          <td><%=rs2.getString("customerMobile")%></td>
          
        </tr>
        <% }

  %>
        
        
      </tbody>
    </table>
    <table width="70%"  border="5" style="margin-top:-135px; table-layout: fixed; float: right">
      <caption style="color: black;font-size: 30px; font-family:Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; text-decoration:underline; text-align: center">
        
      </caption>
      <tbody style="text-align: center">
        <tr >
          <th style="color:black;font-size: 16px;text-align: center" scope="col">ReservationID </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Client UserName </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Hotel Name</th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Reservation Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Check In Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Check Out Date </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Type </th>
          
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
          <td><%=rs.getString("typee")%></td>
        </tr>
        <% }

  %>
        
        
      </tbody>
    </table>
</section>
            
            
            
            
            

  
 

    </body>
</html>
