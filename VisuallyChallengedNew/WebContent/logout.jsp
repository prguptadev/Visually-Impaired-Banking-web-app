
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
	responsiveVoice.speak("Thank you for visiting Standard Chartered Bank");
	}

function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak(" Please click to login again ");
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
			
			<onsubmit="return validation()" style="background: none;">
				
				<div class="form-group" style="color: ">
				
					<label for="user" class="font-weight-bold" style="transform: translate(250px,150px)"><h2> Thank You</h2> </label>&nbsp;&nbsp;  <span id="username"  class="text-danger font-weight-bold"> </span>
					<br>
					<br><br><br><br>
					
				</div>
				
			
				
				<br>
                


		</div>
	</div>

	<div class="w3-container">
				
<div class="w3-container" style="transform: translate(3px,105px);"><a href="index.jsp" class="w3-btn w3-block w3-green w3-border w3-xxlarge" style="color: whitesmoke;" onmouseover="log1()"> <b>Home Page</b></a></div>
<br><br><br>


    </body>
</html>