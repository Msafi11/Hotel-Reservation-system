<%-- 
    Document   : SignUp
    Created on : Jan 1, 2021, 11:04:47 PM
    Author     : Safix
--%>



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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            
            
            
            
            
            
            
            
            
            
            
             
     
  
        // chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"
                                    + "abcdefghijklmnopqrstuvxyz"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(8); 
  
        for (int i = 0; i < 8; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        String randompass = sb.toString(); 


Class.forName("com.mysql.jdbc.Driver");
                String url = "jdbc:mysql://127.0.0.1:3306/fondok";
                String userr = "root";
                String password = "root";
                Connection Con = null;
                Statement Stmt = null;
                ResultSet rs = null;
                PreparedStatement ps = null;
                
                
                
                String to  = request.getParameter("email");
                String name =  request.getParameter("name");
                String username =request.getParameter("username");
                int age = Integer.parseInt(request.getParameter("age"));
                String mobile = request.getParameter("mobile");
                String subject = "SignUp Confirmation";
                
                String user = "fondokbooking@gmail.com";
                String pass = "Fondokbooking1";
                
                
                
               
               

                
                
                
                
                
                
                
                
                
                
               String query = "INSERT INTO `fondok`.`customer` (`customerUsername`, `customerName`, `customerEmail`, `customerAge`, `customerPass`, `customerMobile`) VALUES ( ?, ?,?, ?,?,?)";
                
               Con = DriverManager.getConnection(url, userr, password);
                
               ps = Con.prepareStatement(query);
               ps.setString (1,username);
               ps.setString (2,name);
               ps.setString (3,to);
               ps.setInt(4,age);
               ps.setString (5,randompass);
               ps.setString (6,mobile);
               
                
                 
                 
                ps.executeUpdate();
                
                
                
                
   

                
                
                
                
                
                
                 
                
        
        
        
        
                
               
                
                
                    
                    
                    Con.close();
                    com.mail.jsp.SendMail.send(to,name,subject, randompass, user, pass);
                     response.sendRedirect("index.html");
    
            %>
    </body>
</html>
