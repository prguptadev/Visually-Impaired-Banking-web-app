
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	responsiveVoice.speak("please enter the cvv number");
	}

function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak("Please click for  submmiting this page");
	}
	function log2(){
	responsiveVoice.speak("Please go back to the previous page");
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


<center><h1>VERIFICATION</h1></center>
	<div class="container" style="background: none;">
		
		<div class="col-lg-6 m-auto d-block"  style="background: none;" >
			
			<form action="Reg4" onsubmit="return validation()" style="background: none;" method="POST">
                <div class="form-group">
					<label class="font-weight-bold" style="transform: translateY(155px)"><h2> CVV</h2> </label>
					<input type="password" name="cvv" class="form-control"style="height: 65px;width: 600px;transform: translate(-10px,160px);font-size: 20px;font-weight: 700;" id="cvv"   onkeyup ="speak(this)"  onfocus="myFunction(this)" autofocus="autofocus" autocomplete="on">
					<span id="cvvs" class="text-danger font-weight-bold"> </span>
				</div>
				
			
				
			
				
				<br>
                
				

		</div>
	</div>


	<div class="w3-container">
			<b><input type="submit" name="submit" value="Next" class="w3-btn w3-block w3-green w3-border w3-xxlarge" style="transform: translateY(135px);"	onclick="particles.html" autocomplete="on"   onmouseover="log1()" ></b></div><br><br><br>
<div class="w3-container" style="transform: translate(3px,105px);"><a href="Reg3.jsp" class="w3-btn w3-block w3-pink w3-border w3-xxlarge" style="color: whitesmoke;" onmouseover="log2()"> <b>Back</b></a></div>
<br><br><br>
</form>
<script type="text/javascript">
		

		function validation(){

            var cvv = document.getElementById('cvv').value;

            if(cvv == ""){
            	var msg ="Please fill your 3 digits cvv";
				document.getElementById('cvvs').innerHTML =" ** Please fill your 3 digits cvv";
				responsiveVoice.speak("Please fill your 3 digits cvv");
				return false;
			}

			if(cvv.length != 3){
				var msg1 = "Length must be of 3 digits only";
				document.getElementById('cvvs').innerHTML = " ** Length must be of 3 digits only";
				responsiveVoice.speak("Length must be of 3 digits only");
				return false;
			}

           




        }

          
            	</script>
    </body>
</html>