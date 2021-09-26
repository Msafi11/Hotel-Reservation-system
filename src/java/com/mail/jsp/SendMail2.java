/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mail.jsp;

/**
 *
 * @author Safix
 */

import java.io.*;
import java.nio.charset.StandardCharsets;
import static java.nio.charset.StandardCharsets.US_ASCII;
import java.nio.file.Files;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;


public class SendMail2 {
    public static void sendAdmin(String Clientname,int RID 
                        )
    { 
         
        Properties props = new Properties();
     
        
        props.put("mail.smtp.host", "smtp.gmail.com");
        
        props.put("mail.smtp.port", "587");		
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        
     
        

        Session session = Session.getInstance(props,new javax.mail.Authenticator()
        {
            protected PasswordAuthentication getPasswordAuthentication()
            {
  	 	         return new PasswordAuthentication("fondokbooking@gmail.com","Fondokbooking1"); 
            }
            
            
        });

        try {
 
     	     
     
            MimeMessage message = new MimeMessage(session);
            
            message.setFrom(new InternetAddress("fondokbooking@gmail.com"));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress("mody111safi@gmail.com"));
            message.setSubject("Customer Cancelation");
            message.setContent("Client" +  Clientname +" HAS BEEN DELETED A RESERVATION WITH AN ID : " + RID,"text/html");
            
            
            
            

            
            
            
            
            
            
            
            Transport.send(message);
            
            
        }
        catch(Exception e) {
    	     e.printStackTrace();
        }
    }
}
