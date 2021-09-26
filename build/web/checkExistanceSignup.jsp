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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>

<%  
String username=request.getParameter("valu");  
if(username==null || username.trim().equals("")){  
out.print("Please enter username");  
}else{  
 
 
try{  
    Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                
                Statement Stmt = null;
                ResultSet rs = null;
 
 
 Con = DriverManager.getConnection(url, userr, password);
  
                
                Stmt = Con.createStatement();
                
               
               rs =  Stmt.executeQuery("SELECT customerUsername FROM fondok.customer where customerUsername='" + username +"';");
               
   
if(rs.next())
        { %>
            <p style="color: red" >This Username Already Exist!</p>
       <% }

else
{%>
<p style="color: green" >Accepted!</p>
<%}

  
Con.close();  
}catch(Exception e){e.printStackTrace();}  
}  
%>
</body>
</html>
