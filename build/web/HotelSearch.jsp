<%-- 
    Document   : HotelSearch
    Created on : Jan 8, 2021, 4:16:50 PM
    Author     : Safix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>FONDOK BOOKING</title>
    <script src="TestCaptcha.js">
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit"
        async defer>
    </script>
    <link rel="stylesheet" href="HotelSearch.css">
    <link rel="icon" href="logo.png">
  </head>
  <body>
      
      
    <div class="container">

        <form id="search" action="HotelSelect.jsp">

        <div class="header">
        
            
            <img src="icon.png"  style=" margin-top: -15px;float:right;width:140px;height:85px;">
            <h3>Search For A Hotel</h3>
            
            
            
            <p>You want to fill out this form</p>
            
        </div>
        
        <div class="sep"></div>

        <div class="inputs">
        
            
            <input name="WHERE" type="text" placeholder="Enter Your Destination" autofocus required />
            <h6>Enter Your CheckIn Date</h6>
            <input name="CheckIn" type="date" pattern="yyyy-MM-dd" autofocus required />
            <h6>Enter Your CheckOut Date</h6>
            <input name="CheckOut" type="date" pattern="yyyy-MM-dd" autofocus required />
            <input name="numOfAdults" type="num" placeholder="Enter Number Of Adults" autofocus required />
            <input name="numOfChilds" type="num" placeholder="Enter Number Of Childs" autofocus required />
             
        
            
            
            
            
            
            <input id="submit" type="submit" value="SEARCH" />
         
        </div>

    </form>

</div>
    
  </body>
</html>




