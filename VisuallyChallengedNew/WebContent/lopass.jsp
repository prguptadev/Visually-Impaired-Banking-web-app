
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
	<head>
	<title></title>

	<link rel="icon" type="image/ico" href="logo.jpg" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="javascript.css" >
</head>

<!--for auto response-->
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		<script type="text/javascript">
function func(){

var msg=document.getElementById("message");
responsiveVoice.speak(msg.value);
}

function loginn(){
	responsiveVoice.speak(" Please enter your password");
	}

function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak(" Please click for  submmiting this page ");
	}
	function log2(){
	responsiveVoice.speak("Please chick to reset your username and password");
	}
	function log3(){
	responsiveVoice.speak("Please enter your password in the textbox ");
	}
	function log4(){
	responsiveVoice.speak("Please enter your password in the textbox ");
	}


</script>

<style>

.h1 {
	
	
	padding: 5px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 35px;
	cursor: pointer;
	margin: 20px 420px;
}

</style>
    <body style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;"
    onload="loginn()">
    <div class="logo"  style="width:2px; height: 100px;padding: 0px;float:left; " >
     <img src="resources/image/fi.png"style="width:362px; height: 139px;"></div> <br><br><br><br>
 </div>

<center><h1></h1></center>

	<div class="w3-container" style="background: none;">
		
		<div class="col-lg-6 m-auto d-block"  style="background: none;" >
			
			<form action="Lopass" onsubmit="return validation()" style="background: none;">
				
				<div class="form-group">
				
					<label for="user" class="font-weight-bold" style="transform: translate(0px,150px)"><h2> Password</h2> </label>&nbsp;&nbsp;  <span id="username"  class="text-danger font-weight-bold"> </span>
					<input type="password" name="lupass" class="form-control" style="height: 65px;width: 600px;transform: translate(-10px,160px);font-size: 20px;font-weight: 700;" id="user" onkeyup ="speak(this)"  onfocus="myFunction(this)" 
					onmouseover="log3()" autofocus="autofocus" autocomplete="off">
					
				</div>
				
			
				
				<br>
                


		</div>
	</div>

	<div class="w3-container">
				<input type="submit" value = "Next" class="w3-btn w3-block w3-green w3-border w3-xxlarge" style="transform: translateY(135px)"	onclick="particles.html" autocomplete="off"   onmouseover="log1()" ></div><br>
         </form>
         
				<div class="w3-container">
			<a href = "forbio11.jsp">	<input type = "submit" value = "Forgot Password" class="w3-btn w3-block w3-pink w3-border w3-xxlarge" style="transform: translateY(135px)"	onclick="particles.html" autocomplete="off"   onmouseover="log2()" > </a></div><br><br><br>

<br><br>
        

    </body>
</html>