<html>
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
	responsiveVoice.speak("YOU HAVE SUCCESSFULLY registered");
	}
function log1(){
	responsiveVoice.speak("Click here to  go to login page ");
	}
    
</script>
<body onload="loginn()">

<div class="w3-container">

<form action="">

<h1><center><u>YOU HAVE SUCCESSFULLY REGISTERED</u></center></h1>
<BR>
<BR>
<BR>
<BR>
<p><a href="index.jsp" class="w3-btn w3-block w3-blue w3-border w3-xxlarge" 	onclick="particles.html" autocomplete="on"   onmouseover="log1()"><b>CLICK FOR LOGIN</b><a></p>
</div>
</form>
<body>

</body>
</html>