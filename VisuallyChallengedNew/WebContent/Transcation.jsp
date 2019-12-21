
<!DOCTYPE html>
<html>
<title>Standard Chartered</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!--for auto response-->
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		<script type="text/javascript">
function func(){

var msg=document.getElementById("message");
responsiveVoice.speak(msg.value);
}

function loginn(){
	responsiveVoice.speak("Welcome to standared chartered online banking");
	}
function pwdd(){
	responsiveVoice.speak("please enter the Password");
	}
function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak("Click for checking your account details");
	}
function log2(){
	responsiveVoice.speak("Click for viewing your mini statement ");
	}
function log3(){
	responsiveVoice.speak("Click here for transfers ");
	}
    function log4(){
	responsiveVoice.speak("Click here to contact us ");
	}
	 function log5(){
	responsiveVoice.speak("Click here to log out ");
	}
</script>
<body style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;"
 onload="loginn()">
 <div class="logo"  style="width:2px; height: 100px;padding: 0px;float:left; " >
     <img src="resources/image/fi.png"style="width:362px; height: 139px;"></div> <br><br><br><br>
 </div><br><br>
<form >
<div class="w3-container">

<!--<h2><center>WELCOME TO STANDARD CHARTERED HOME PAGE</center></h2>-->
<p><a href ="acc"  formaction = "acc" class="w3-btn w3-block w3-pink w3-border w3-xxlarge"  autocomplete="on"   onmouseover="log1()" >ACCOUNT DETAILS</a></p>

 <p><a href="min"  formaction = "min" class="w3-btn w3-block w3-green w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log2()">MINI STATEMENT</a></p>
<p><a href="Transfer.jsp" class="w3-btn w3-block w3-pink w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log3()">TRANSFERS</a></p>
 <p><a href="contact.jsp" class="w3-btn w3-block w3-green w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log4()">CONTACT US</a></p>
 <p><a href="logout.jsp"  formaction = "logout" class="w3-btn w3-block w3-pink w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log5()">LOGOUT</a></p>
</div>
</form>
<body>

</body>
</html>