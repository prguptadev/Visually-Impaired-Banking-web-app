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
	responsiveVoice.speak("Welcome to Transfer page");
	}

function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak("Click to transfer the amount ");
	}
    function log2(){
	responsiveVoice.speak("please enter the Account Holder Name");
	}
	function log6(){
	responsiveVoice.speak("you are in the text box area please click and enter the Account Holder Name ");
	}
     function log3(){
	responsiveVoice.speak("please enter the Source Account Number");
	}
	function log7(){
	responsiveVoice.speak("you are in the text box area please click and enter the Source Account Number ");
	}
     function log4(){
	responsiveVoice.speak("please enter the Destination Account Number");
	}
	function log8(){
	responsiveVoice.speak("you are in the text box area please click and enter the Destination Account Number ");
	}
     function log5(){
	responsiveVoice.speak("please enter the Amount");
	}
	function log9(){
	responsiveVoice.speak("you are in the text box area please click and enter the Amount  ");
	}
	</script>
<body  style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;"
 onload="loginn()">
 <div class="logo"  style="width:2px; height: 100px;padding: 0px;float:left; " >
     <img src="resources/image/fi.png"style="width:362px; height: 139px;"><br></div> <div style="transform:translate(500px,40px);"><span id="username" style="color: red;font-size: 30px;font-weight: 700;" class="text-danger font-weight-bold"> </span></div><br><br>
 </div>
 <form action="TransSuccess.jsp" onsubmit="return validation()" >
<div class="w3-container">
	<br>
	<center>
	<br>
<p><label  for="user" style="float:left;"  class="w3-button w3-round w3-blue w3-xxlarge" onmouseover="log2()">Account Holder Name:</label>
	<input type="text" style="float:left;margin-left: 7px;"   id="user"  onkeyup ="speak(this)" onmouseover="log6()" onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p><br>
<br><br><br>
	<p><label style="float:left;" class="w3-button w3-round w3-blue w3-xxlarge" onmouseover="log3()">Select Source Account Number:</label>
	<input type="text" style="float:left;margin-left: 7px;" id="user1" value="" onmouseover="log7()" onkeyup ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p><br>
<br><br><br>
	<p><label style="float:left;" class="w3-button w3-round w3-blue w3-xxlarge" onmouseover="log4()">Select Destination Account Number:</label>
	<input style="float:left;margin-left: 7px;"  type="text" id ="user2"value=""  onmouseover="log8()" onkeyup ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p><br>
 <br><br><br>
	<p><label style="float:left;"  class="w3-button w3-round w3-blue w3-xxlarge" onmouseover="log5()">Amount:</label>
	<input style="float:left;margin-left: 7px;" type="text" id="user3" value=""  onkeyup ="speak(this)" onmouseover="log9()" onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on"></p>
	</center>
	 <input type="submit" style="transform:translateY(70px) translateX(-700px); height :0%; width: 35%;  left: 0; float:left; " class="w3-btn w3-block w3-green w3-border w3-xxlarge" value="Transfer Amount" autocomplete="on"   onmouseover="log1()"></p>

<br>
<p align = "right"><a href="Transcation.jsp"     style=" height :0%; width: 35%;  right: 0; float:right; " class="w3-btn w3-block w3-green w3-border w3-xxlarge" onclick="particles.html" autocomplete="on"   onmouseover="log1()"><b>Home Page</b></a></p>
</form>

<script type="text/javascript">
		

		function validation(){

			var user = document.getElementById('user').value;
		
			if(user == ""){
				var msg1 = " Please fill the account holder name "
				document.getElementById('username').innerHTML = msg1;
				responsiveVoice.speak(" Please fill the account holder name to whom you want to send money ");
				return false;
			}
			if((user.length <= 2) || (user.length > 20)) {
				var msg2 = "Account holder name length must be between 2 and 20 "
				document.getElementById('username').innerHTML = msg2;
				responsiveVoice.speak("Account holder name length must be between 2 and 20 ");

				return false;	
			}
			if(!isNaN(user)){
				var msg3 =" only characters are allowed"
				document.getElementById('username').innerHTML = msg3;
				responsiveVoice.speak(" only characters are allowed");
				return false;
			}

			var user1 = document.getElementById('user1').value;
			var regex = /^[0-9]+$/;

			if(user1 == ""){
				var msg1 = " Please fill your account number "
				document.getElementById('username').innerHTML = msg1;
				responsiveVoice.speak(" Please fill your account number from which you want to send money ");
				return false;
			}

			if(user1.length != 10){
				var msg2 ="Length of the account number  must be of 10 digits only ";  
				document.getElementById('username').innerHTML = msg2;
                responsiveVoice.speak("Length of the account number must be of 10 digits only ");
				return false;	
                 
			}
			if(regex.test(user1) == false){
				var msg3 = "Account number must be in numbers only";
				document.getElementById('username').innerHTML = msg3;
				responsiveVoice.speak("Account number must be in numbers only");
				return false;
			}

			var user2 = document.getElementById('user2').value;
			var regex1 = /^[0-9]+$/;

			if(user2 == ""){
				var msg1 = " Please fill the account number of a person whom you want to tansfer money "
				document.getElementById('username').innerHTML = msg1;
				responsiveVoice.speak(" Please fill the account number of a person whom you want to tansfer money ");
				return false;
			}

			if(user2.length != 10){
				var msg2 ="Length of the account number  must be of 10 digits only ";  
				document.getElementById('username').innerHTML = msg2;
                responsiveVoice.speak("Length of the account number must be of 10 digits only ");
				return false;	
                 
			}
			if(regex1.test(user2) == false){
				var msg3 = "Account number must be in numbers only";
				document.getElementById('username').innerHTML = msg3;
				responsiveVoice.speak("Account number must be in numbers only");
				return false;
			}

			var user3 = document.getElementById('user3').value;

			if(user3 == ""){
				var msg1 = " Please fill the amount which you want to tansfer "
				document.getElementById('username').innerHTML = msg1;
				responsiveVoice.speak(" Please fill the amount which you want to tansfer  ");
				return false;
			}
			if(user3 == 0){
				var msg2 ="Sorry you can't transfer this amount";  
				document.getElementById('username').innerHTML = msg2;
                responsiveVoice.speak("Sorry you can't transfer this amount");
				return false;	
             }
			
		}

	</script>
</body>
</html>
