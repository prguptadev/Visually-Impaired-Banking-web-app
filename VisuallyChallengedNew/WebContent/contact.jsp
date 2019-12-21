
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
	<style type="text/css">
		input{
			width: 500px;
			height: 60px;
			box-sizing: border-box;
			text-decoration-color: black;

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
	responsiveVoice.speak("you are on contact details page");
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
	</script>
<body style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;" 
onload="loginn()">

	<div class="logo"  style="width:2px; height: 100px;padding: 0px;float:left; " >
     <img src="resources/image/fi.png"style="width:362px; height: 139px;"></div> <br><br>
 </div>
<div class="w3-container">
	<br><br>
	<center>
<p><button class="w3-button w3-round w3-blue w3-xxlarge">Name of Bank :</button>
	<input class="w3-button w3-round w3-green w3-large" type="button" value="Standard Chartered" onmouseover ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>

	<p><button class="w3-button w3-round w3-blue w3-xxlarge">Branch:</button>
	<input class="w3-button w3-round w3-green w3-large" type="button" value="Koramangala" onmouseover ="speak(this)"onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>

	<p><button class="w3-button w3-round w3-blue w3-xxlarge">Address:</button>
	<input type="button" class="w3-button w3-round w3-green w3-large" value="No. 112, Ground Floor, Serenity Building, Koramangla Industrial Area, Koramangala, Opp Forum Mall, Bengaluru, Karnataka 560095" onmouseover ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>

	<p><button class="w3-button w3-round w3-blue w3-xxlarge">e-mail:</button>
	<input type="button" class="w3-button w3-round w3-green w3-large" value="customer.care@sc.com "onmouseover ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>
	
<p><button class="w3-button w3-round w3-blue w3-xxlarge">Phone number:</button>
	<input class="w3-button w3-round w3-green w3-large" type="button" value="080670 79503" onmouseover ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>
	</center>
	<p><a href="Transcation.jsp" class="w3-btn w3-block w3-green w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log1()">Home</a></p>
</body>
</html>