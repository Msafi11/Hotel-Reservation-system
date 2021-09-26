/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


var requestt;  
function sendInfo()  
{  
var vuu=document.showrating.hotel.value;  
var url="checkrating.jsp?valur="+vuu;  
  
if(window.XMLHttpRequest){  
requestt=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
requestt=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
requestt.onreadystatechange=getInfo;  
requestt.open("GET",url,true);  
requestt.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(requestt.readyState==4){  
var valur=requestt.responseText;  
document.getElementById('bebo').innerHTML=valur;  
}  
}