<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	
}

.button {
	background-color: green;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 35px;
	margin: 20px 540px;
	cursor: pointer;
}

.button1 {
	background-color: red;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 35px;
	margin: 4px 518px;
	cursor: pointer;
}


.h3 {
	background-color: ;
	border: black;
	color: Black;
	voice-family :female;
	padding: 30px 40px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 40px;
	margin: 4px 4px;
	cursor: pointer;
}
</style>

<title>Standard Chartered</title>

<link rel="icon" type="image/ico" href="logo.jpg" />


<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		<script type="text/javascript">
function wel(){
responsiveVoice.speak("welcome to standard chartered bank");
}

function log(){
	responsiveVoice.speak("Enter for Login");
	}

function regg(){
	responsiveVoice.speak("Enter for Registeration");
	}

function logo(){
	responsiveVoice.speak("standard chartered ");
	}
function msgg(){
	responsiveVoice.speak("welcome to standard chartered bank");
	}
</script>

</head>
<body style=" background-image: url('resources/image/background4.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;"
onload="wel()">

<p>

	
	<center><h3 class ="h3" onmouseover="msgg()"><b></b></h3></center></p>


	<form>
	<div class="w3-container">
	<img src="resources/image/fi.png" style="width: 350px;height: 150px" onmouseover="logo()"><br><br>
	<b><input type="submit" class="w3-btn w3-block w3-green w3-border w3-xxlarge" onclick="loo()" id ="nn" value="LOGIN"
		 autofocus="autofocus" onmouseover="log()" formaction="LogUser1"> </b>
	<br>
	<br>
	<b><input type="submit" class="w3-btn w3-block w3-pink w3-border w3-xxlarge" value="NEW USER" autofocus="autofocus" onmouseover="regg()"formaction="LogUser2"></b> 

	
</div>
	</form>
</body>
</html>
 