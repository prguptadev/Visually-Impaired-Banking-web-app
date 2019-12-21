
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
	<style type="text/css">
 td, th {    
    border: 3px solid black;
    text
    
    
}

table {
    border-collapse: collapse;
    border: 3px solid black;
    width: 50%;
   
}

th, td {
    padding: 30px;
    
}
</style>
</head>
<!--for auto response-->
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		<script type="text/javascript">
function func(){

var msg=document.getElementById("message");
responsiveVoice.speak(msg.value);
}

function loginn(){
	responsiveVoice.speak("you can get your mini statement details in this page");
	}
function pwdd(){
	responsiveVoice.speak("please enter the Password");
	}
function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak("Click for going to home page");
	}

function printPage() 
{
window.print();
}

    </script>    
    
<body style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;"
onload="loginn()">
	<div class="logo"  style="width:2px; height: 100px;padding: 0px;float:left; " >
     <img src="resources/image/fi.png"style="width:362px; height: 139px;"></div> <br><br><br><br>
 </div>
<table align="center">
	&nbsp;
			<tr>
				   <caption><b>MINI STATEMENT</b></caption>
	<th>DETAILS</th>
	<th>AMOUNT</th>
    </tr>
    <tr>
    	<td>atm withdrawl</td>
    	<td>4000</td>
    </tr>
    <tr>
    	<td>purchase</td>
    	<td>3000</td>
    </tr>
    <tr>
    	<td>credit-UPI</td>
    	<td>7000</td>
    </tr>
    <tr>
    	<td>UPI pay</td>
    	<td>400</td>
    </tr>
    <tr>
    	<td>withdrawl-others</td>
    	<td>900</td>
    </tr>
    

</table>

<p><a href="Transcation.jsp" class="w3-btn w3-block w3-green w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log1()"><b>Home Page</b></a></p>
<p><a href="button.html" class="w3-btn w3-block w3-green w3-border w3-xxlarge" onclick="printPage()" autocomplete="on"   onmouseover="log1()">Print</a></p>
</body>
</html>