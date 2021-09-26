package com.mail.jsp;


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





public class SendMail
{ 
    
    
    public static void send(String to,String name, String sub, 
                         String randompassword, final String user,final String pass)
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
  	 	         return new PasswordAuthentication(user,pass); 
            }
            
            
        });

        try {
 
     	     
     
            MimeMessage message = new MimeMessage(session);
            
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
            message.setSubject(sub);
            
            
            
            

            
            
            
            
            
            
            message.setContent("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">"
                    + "<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" style=\"width:100%;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0\">"
                    + "<head> \n" +
"  <meta charset=\"UTF-8\"> \n" +
"  <meta content=\"width=device-width, initial-scale=1\" name=\"viewport\"> \n" +
"  <meta content=\"telephone=no\" name=\"format-detection\"> \n" +
"  <title>New email template 2020-12-30</title> \n" +
"  <!--[if (mso 16)]>\n" +
"    <style type=\"text/css\">\n" +
"    a {text-decoration: none;}\n" +
"    </style>\n" +
"    <![endif]--> \n" +
"  <!--[if gte mso 9]><style>sup { font-size: 100% !important; }</style><![endif]--> \n" +
"  <!--[if gte mso 9]>\n" +
"<xml>\n" +
"    <o:OfficeDocumentSettings>\n" +
"    <o:AllowPNG></o:AllowPNG>\n" +
"    <o:PixelsPerInch>96</o:PixelsPerInch>\n" +
"    </o:OfficeDocumentSettings>\n" +
"</xml>\n" +
"<![endif]--> \n" +
"  <style type=\"text/css\">\n" +
"#outlook a {\n" +
"	padding:0;\n" +
"}\n" +
".ExternalClass {\n" +
"	width:100%;\n" +
"}\n" +
".ExternalClass,\n" +
".ExternalClass p,\n" +
".ExternalClass span,\n" +
".ExternalClass font,\n" +
".ExternalClass td,\n" +
".ExternalClass div {\n" +
"	line-height:100%;\n" +
"}\n" +
".es-button {\n" +
"	mso-style-priority:100!important;\n" +
"	text-decoration:none!important;\n" +
"}\n" +
"a[x-apple-data-detectors] {\n" +
"	color:inherit!important;\n" +
"	text-decoration:none!important;\n" +
"	font-size:inherit!important;\n" +
"	font-family:inherit!important;\n" +
"	font-weight:inherit!important;\n" +
"	line-height:inherit!important;\n" +
"}\n" +
".es-desk-hidden {\n" +
"	display:none;\n" +
"	float:left;\n" +
"	overflow:hidden;\n" +
"	width:0;\n" +
"	max-height:0;\n" +
"	line-height:0;\n" +
"	mso-hide:all;\n" +
"}\n" +
"@media only screen and (max-width:600px) {p, ul li, ol li, a { font-size:16px!important; line-height:150%!important } h1 { font-size:30px!important; text-align:center; line-height:120%!important } h2 { font-size:26px!important; text-align:center; line-height:120%!important } h3 { font-size:20px!important; text-align:center; line-height:120%!important } .es-menu td a { font-size:16px!important } .es-header-body p, .es-header-body ul li, .es-header-body ol li, .es-header-body a { font-size:16px!important } .es-footer-body p, .es-footer-body ul li, .es-footer-body ol li, .es-footer-body a { font-size:16px!important } .es-infoblock p, .es-infoblock ul li, .es-infoblock ol li, .es-infoblock a { font-size:12px!important } *[class=\"gmail-fix\"] { display:none!important } .es-m-txt-c { text-align:center!important } .es-m-txt-r { text-align:right!important } .es-m-txt-l { text-align:left!important } .es-m-txt-r img, .es-m-txt-c img, .es-m-txt-l img { display:inline!important } .es-button-border { display:block!important } .es-btn-fw { border-width:10px 0px!important; text-align:center!important } .es-adaptive table, .es-btn-fw, .es-btn-fw-brdr, .es-left, .es-right { width:100%!important } .es-content table, .es-header table, .es-footer table, .es-content, .es-footer, .es-header { width:100%!important; max-width:600px!important } .es-adapt-td { display:block!important; width:100%!important } .adapt-img { width:100%!important; height:auto!important } .es-m-p0 { padding:0px!important } .es-m-p0r { padding-right:0px!important } .es-m-p0l { padding-left:0px!important } .es-m-p0t { padding-top:0px!important } .es-m-p0b { padding-bottom:0!important } .es-m-p20b { padding-bottom:20px!important } .es-mobile-hidden, .es-hidden { display:none!important } tr.es-desk-hidden, td.es-desk-hidden, table.es-desk-hidden { width:auto!important; overflow:visible!important; float:none!important; max-height:inherit!important; line-height:inherit!important } tr.es-desk-hidden { display:table-row!important } table.es-desk-hidden { display:table!important } td.es-desk-menu-hidden { display:table-cell!important } .es-menu td { width:1%!important } table.es-table-not-adapt, .esd-block-html table { width:auto!important } table.es-social td { display:inline-block!important } table.es-social { display:inline-block!important } a.es-button, button.es-button { font-size:20px!important; display:block!important; border-width:10px 0px 10px 0px!important } }\n" +
"</style> \n" +
" </head> "
                    + "<body style=\"width:100%;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;padding:0;Margin:0\"> \n" +
"  <div class=\"es-wrapper-color\" style=\"background-color:#CCCCCC\"> \n" +
"   <!--[if gte mso 9]>\n" +
"			<v:background xmlns:v=\"urn:schemas-microsoft-com:vml\" fill=\"t\">\n" +
"				<v:fill type=\"tile\" color=\"#cccccc\"></v:fill>\n" +
"			</v:background>\n" +
"		<![endif]--> \n" +
"   <table class=\"es-wrapper\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top\"> \n" +
"     <tr style=\"border-collapse:collapse\"> \n" +
"      <td valign=\"top\" style=\"padding:0;Margin:0\"> \n" +
"       <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-content\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\"> \n" +
"         <tr style=\"border-collapse:collapse\"> \n" +
"          <td class=\"es-adaptive\" align=\"center\" style=\"padding:0;Margin:0\"> \n" +
"           <table class=\"es-content-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#EFEFEF;width:600px\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#efefef\" align=\"center\"> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"padding:10px;Margin:0\"> \n" +
"               <!--[if mso]><table style=\"width:580px\"><tr><td style=\"width:280px\" valign=\"top\"><![endif]--> \n" +
"               <table class=\"es-left\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td align=\"left\" style=\"padding:0;Margin:0;width:280px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td class=\"es-infoblock\" align=\"left\" style=\"padding:0;Margin:0;line-height:14px;font-size:12px;color:#CCCCCC\"></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table> \n" +
"               <!--[if mso]></td><td style=\"width:20px\"></td><td style=\"width:280px\" valign=\"top\"><![endif]--> \n" +
"               <table class=\"es-right\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:right\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td align=\"left\" style=\"padding:0;Margin:0;width:280px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"right\" class=\"es-infoblock\" style=\"padding:0;Margin:0;line-height:14px;font-size:12px;color:#CCCCCC\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:12px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:14px;color:#CCCCCC\"><a  target=\"_blank\" class=\"view\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:12px;text-decoration:underline;color:#CCCCCC\"></a></p></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table> \n" +
"               <!--[if mso]></td></tr></table><![endif]--></td> \n" +
"             </tr> \n" +
"           </table></td> \n" +
"         </tr> \n" +
"       </table> \n" +
"       <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-header\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\"> \n" +
"         <tr style=\"border-collapse:collapse\"> \n" +
"          <td align=\"center\" style=\"padding:0;Margin:0\"> \n" +
"           <table class=\"es-header-body\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:600px\"> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"padding:10px;Margin:0\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:580px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"center\" style=\"padding:0;Margin:0;font-size:0px\"><img src=\"https://nthtch.stripocdn.email/content/guids/f6d8199a-bdc8-44ac-93a1-ea14908b1723/images/53631609282818657.png\" alt=\"Smart home logo\" title=\"Smart home logo\" width=\"184\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td style=\"padding:0;Margin:0;padding-left:5px;padding-right:5px;background-color:#4A7EB0\" bgcolor=\"#4a7eb0\" align=\"left\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:590px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td style=\"padding:0;Margin:0\"> \n" +
"                       <table class=\"es-menu\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                         <tr class=\"links\" style=\"border-collapse:collapse\"> \n" +
"                          <td style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:10px;padding-bottom:10px;border:0\" width=\"33.33%\" bgcolor=\"transparent\" align=\"center\"><a style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:none;display:block;color:#FFFFFF\" href=\"\">Reviews</a></td> \n" +
"                          <td style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:10px;padding-bottom:10px;border:0\" width=\"33.33%\" bgcolor=\"transparent\" align=\"center\"><a style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:none;display:block;color:#FFFFFF\" href=\"\">Partners</a></td> \n" +
"                          <td style=\"Margin:0;padding-left:5px;padding-right:5px;padding-top:10px;padding-bottom:10px;border:0\" width=\"33.33%\" bgcolor=\"transparent\" align=\"center\"><a style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:none;display:block;color:#FFFFFF\" href=\"\">Contact</a></td> \n" +
"                         </tr> \n" +
"                       </table></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"           </table></td> \n" +
"         </tr> \n" +
"       </table> \n" +
"       <table class=\"es-content\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\"> \n" +
"         <tr style=\"border-collapse:collapse\"> \n" +
"          <td align=\"center\" style=\"padding:0;Margin:0\"> \n" +
"           <table class=\"es-content-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#FFFFFF;width:600px\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" align=\"center\"> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"Margin:0;padding-top:20px;padding-bottom:20px;padding-left:40px;padding-right:40px\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:520px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0\"><h1 style=\"Margin:0;line-height:36px;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:30px;font-style:normal;font-weight:normal;color:#4A7EB0\">Account Created Successfully ...</h1></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0;padding-top:5px;padding-bottom:20px;font-size:0\"> \n" +
"                       <table width=\"5%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                         <tr style=\"border-collapse:collapse\"> \n" +
"                          <td style=\"padding:0;Margin:0;border-bottom:2px solid #999999;background:#FFFFFF none repeat scroll 0% 0%;height:1px;width:100%;margin:0px\"></td> \n" +
"                         </tr> \n" +
"                       </table></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0;padding-bottom:10px\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:16px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:24px;color:#666666\">Hi,"+ name +",</p></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#666666\">We've added you to your second home, as you asked. Your Email will be used if you forgot your password and for important account message. Your Email&nbsp;must be verified.Your can access your account by using this password.</p></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0;padding-top:20px;padding-bottom:20px\"><span class=\"es-button-border\" style=\"border-style:solid;border-color:#4A7EB0;background:#2CB543;border-width:0px;display:inline-block;border-radius:0px;width:auto\"><a href=\"\" class=\"es-button\" target=\"_blank\" style=\"mso-style-priority:100 !important;text-decoration:none;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:arial, 'helvetica neue', helvetica, sans-serif;font-size:18px;color:#4A7EB0;border-style:solid;border-color:#EFEFEF;border-width:10px 25px;display:inline-block;background:#EFEFEF;border-radius:0px;font-weight:normal;font-style:normal;line-height:22px;width:auto;text-align:center\">"+randompassword +"</a></span></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#666666\">If you need help visit the <a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#4A7EB0\">Help</a> page or <a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#4A7EB0\">contact us</a>.</p></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"Margin:0;padding-top:20px;padding-bottom:20px;padding-left:40px;padding-right:40px\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:520px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"center\" style=\"padding:0;Margin:0;padding-right:5px;padding-top:20px;padding-bottom:20px;font-size:0\"> \n" +
"                       <table width=\"100%\" height=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                         <tr style=\"border-collapse:collapse\"> \n" +
"                          <td style=\"padding:0;Margin:0;border-bottom:1px solid #FFFFFF;background:#FFFFFF none repeat scroll 0% 0%;height:1px;width:100%;margin:0px\"></td> \n" +
"                         </tr> \n" +
"                       </table></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"           </table></td> \n" +
"         </tr> \n" +
"       </table> \n" +
"       <table cellpadding=\"0\" cellspacing=\"0\" class=\"es-footer\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\"> \n" +
"         <tr style=\"border-collapse:collapse\"> \n" +
"          <td align=\"center\" style=\"padding:0;Margin:0\"> \n" +
"           <table class=\"es-footer-body\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:#EFEFEF;width:600px\"> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"padding:20px;Margin:0\"> \n" +
"               <!--[if mso]><table style=\"width:560px\" cellpadding=\"0\" cellspacing=\"0\"><tr><td style=\"width:194px\"><![endif]--> \n" +
"               <table class=\"es-left\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td class=\"es-m-p0r es-m-p20b\" align=\"center\" style=\"padding:0;Margin:0;width:174px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td class=\"es-m-p0l\" align=\"left\" style=\"padding:0;Margin:0;padding-bottom:10px;font-size:0px\"><img src=\"https://nthtch.stripocdn.email/content/guids/f6d8199a-bdc8-44ac-93a1-ea14908b1723/images/53631609282818657.png\" alt width=\"153\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                  <td class=\"es-hidden\" style=\"padding:0;Margin:0;width:20px\"></td> \n" +
"                 </tr> \n" +
"               </table> \n" +
"               <!--[if mso]></td><td style=\"width:173px\"><![endif]--> \n" +
"               <table class=\"es-left\" cellspacing=\"0\" cellpadding=\"0\" align=\"left\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:left\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td class=\"es-m-p0r es-m-p20b\" align=\"center\" style=\"padding:0;Margin:0;width:173px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td esdev-links-color=\"#333333\" align=\"left\" style=\"padding:0;Margin:0\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\"><a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#333333\">Reviews</a></p><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\"><a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#333333\">Partners</a><br><a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#333333\">Store</a><br><a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:14px;text-decoration:underline;color:#333333\">Customer Support</a></p></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table> \n" +
"               <!--[if mso]></td><td style=\"width:20px\"></td><td style=\"width:173px\"><![endif]--> \n" +
"               <table class=\"es-right\" cellspacing=\"0\" cellpadding=\"0\" align=\"right\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;float:right\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td class=\"es-m-p0r es-m-p20b\" align=\"center\" style=\"padding:0;Margin:0;width:173px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td esdev-links-color=\"#333333\" align=\"left\" class=\"es-m-txt-с es-m-txt-l\" style=\"padding:0;Margin:0;padding-bottom:10px\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\"><a href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:20px;text-decoration:none;color:#333333;line-height:30px\">01156353309</a></p></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td esdev-links-color=\"#333333\" align=\"left\" class=\"es-m-txt-с es-m-txt-l\" style=\"padding:0;Margin:0;padding-bottom:10px\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\"><a href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:20px;text-decoration:none;color:#333333;line-height:30px\">01142892921</a></p></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td class=\"es-m-txt-с\" esdev-links-color=\"#333333\" align=\"left\" style=\"padding:0;Margin:0;padding-bottom:10px\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\">fondokbooking@gmail.com</p></td> \n" +
"                     </tr> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td align=\"left\" style=\"padding:0;Margin:0;font-size:0\"> \n" +
"                       <table class=\"es-table-not-adapt es-social\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                         <tr style=\"border-collapse:collapse\"> \n" +
"                          <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;padding-right:10px\"><img title=\"Twitter\" src=\"https://stripo.email/cabinet/assets/editor/assets/img/social-icons/circle-colored/twitter-circle-colored.png\" alt=\"Tw\" width=\"24\" height=\"24\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                          <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;padding-right:10px\"><img title=\"Facebook\" src=\"https://stripo.email/cabinet/assets/editor/assets/img/social-icons/circle-colored/facebook-circle-colored.png\" alt=\"Fb\" width=\"24\" height=\"24\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                          <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;padding-right:10px\"><img title=\"Youtube\" src=\"https://stripo.email/cabinet/assets/editor/assets/img/social-icons/circle-colored/youtube-circle-colored.png\" alt=\"Yt\" width=\"24\" height=\"24\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                          <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0\"><img title=\"Vkontakte\" src=\"https://stripo.email/cabinet/assets/editor/assets/img/social-icons/circle-colored/vk-circle-colored.png\" alt=\"Vk\" width=\"24\" height=\"24\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                         </tr> \n" +
"                       </table></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table> \n" +
"               <!--[if mso]></td></tr></table><![endif]--></td> \n" +
"             </tr> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"padding:0;Margin:0;padding-bottom:15px;padding-left:20px;padding-right:20px\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:560px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td esdev-links-color=\"#333333\" align=\"left\" style=\"padding:0;Margin:0\"><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:12px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:18px;color:#333333\">You are receiving this email because you have visited our site or asked us about the regular newsletter.</p><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:12px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:18px;color:#333333\"><a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:12px;text-decoration:underline;color:#333333\" class=\"unsubscribe\">Unsubscribe</a>&nbsp; | <a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:12px;text-decoration:underline;color:#333333\">Update Preferences</a> | <a target=\"_blank\" href=\"\" style=\"-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;font-size:12px;text-decoration:underline;color:#333333\">Customer Support</a></p><p style=\"Margin:0;-webkit-text-size-adjust:none;-ms-text-size-adjust:none;mso-line-height-rule:exactly;font-size:14px;font-family:helvetica, 'helvetica neue', arial, verdana, sans-serif;line-height:21px;color:#333333\"><br></p></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"           </table></td> \n" +
"         </tr> \n" +
"       </table> \n" +
"       <table class=\"es-content\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;table-layout:fixed !important;width:100%\"> \n" +
"         <tr style=\"border-collapse:collapse\"> \n" +
"          <td align=\"center\" style=\"padding:0;Margin:0\"> \n" +
"           <table class=\"es-content-body\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px;background-color:transparent;width:600px\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\"> \n" +
"             <tr style=\"border-collapse:collapse\"> \n" +
"              <td align=\"left\" style=\"Margin:0;padding-left:20px;padding-right:20px;padding-top:30px;padding-bottom:30px\"> \n" +
"               <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                 <tr style=\"border-collapse:collapse\"> \n" +
"                  <td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:560px\"> \n" +
"                   <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"mso-table-lspace:0pt;mso-table-rspace:0pt;border-collapse:collapse;border-spacing:0px\"> \n" +
"                     <tr style=\"border-collapse:collapse\"> \n" +
"                      <td class=\"es-infoblock made_with\" align=\"center\" style=\"padding:0;Margin:0;line-height:0px;font-size:0px;color:#CCCCCC\"><img src=\"https://nthtch.stripocdn.email/content/guids/f6d8199a-bdc8-44ac-93a1-ea14908b1723/images/53631609282818657.png\" alt width=\"125\" style=\"display:block;border:0;outline:none;text-decoration:none;-ms-interpolation-mode:bicubic\"></td> \n" +
"                     </tr> \n" +
"                   </table></td> \n" +
"                 </tr> \n" +
"               </table></td> \n" +
"             </tr> \n" +
"           </table></td> \n" +
"         </tr> \n" +
"       </table></td> \n" +
"     </tr> \n" +
"   </table> \n" +
"  </div>  \n" +
" </body>\n" +
"</html>" 
                    ,
             "text/html");
            

            
           
            Transport.send(message);
            
            
        }
        catch(Exception e) {
    	     e.printStackTrace();
        }
    }
   

    
}