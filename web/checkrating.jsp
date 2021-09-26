<%-- 
    Document   : checkrating
    Created on : Jan 15, 2021, 6:01:27 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="css/singlePageTemplate.css" rel="stylesheet" type="text/css">
<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
<link rel="icon" href="logo.png">
        <title>JSP Page</title>
    </head>
    <body>
        <% try{  
            String hotelName=request.getParameter("valur");  
    Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
 
 
 Con = DriverManager.getConnection(url, userr, password);
  
                
                Stmt = Con.createStatement();
                
               
                
String query = "SELECT * FROM fondok.rating WHERE hotelName = '" +  hotelName + "'";
Stmt = Con.createStatement();
rs=Stmt.executeQuery(query);
%>
            
<table width="100%"  border="5" style="margin-top:35px; table-layout: fixed">
      <caption style="color: black;font-size: 30px; font-family:Constantia, 'Lucida Bright', 'DejaVu Serif', Georgia, 'serif'; text-decoration:underline; text-align: center">
        ALL Ratings
      </caption>
      <tbody style="text-align: center">
        <tr >
          
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Client UserName </th>
          
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Stars </th>
          <th style="color:black;font-size: 16px;text-align: center" scope="col">Comment </th>
          
        </tr>
        <%
                while(rs.next()){
             %>
        <tr>
          <td><%=rs.getString("customerUsername")%></td>
          
          <td><%=rs.getInt("stars")%></td>
          <td><%=rs.getString("comment")%></td>
        </tr>
        <% }

  %>
        
        
      </tbody>
    </table>
            
  
<%
            
            

  
 
}catch(Exception e){e.printStackTrace();}  %>
 
    </body>
</html>
