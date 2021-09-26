/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var requesttt;  
function sendInfo()  
{  
var vuuu=document.getclientt.CLIENT_USERNAME.value;  
var url="checkclient.jsp?valure="+vuuu;  
  
if(window.XMLHttpRequest){  
requesttt=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
requesttt=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
requesttt.onreadystatechange=getInfo;  
requesttt.open("GET",url,true);  
requesttt.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(requesttt.readyState==4){  
var valure=requesttt.responseText;  
document.getElementById('getclienty').innerHTML=valure;  
}  
}