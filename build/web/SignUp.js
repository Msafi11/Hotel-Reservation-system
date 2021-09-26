var onloadCallback = function() {
        grecaptcha.render('html_element', {
          'sitekey' : '6LczAxsaAAAAANcRXCndj_X_KDA94L9OBkbKZ1RK'
        });
      };
      
      
var request;  
function sendInfo()  
{  
var vu=document.signup.username.value;  
var url="checkExistanceSignup.jsp?valu="+vu;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var valu=request.responseText;  
document.getElementById('amitu').innerHTML=valu;  
}  
}