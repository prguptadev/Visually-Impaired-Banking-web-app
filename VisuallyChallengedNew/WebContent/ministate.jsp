<%@page import="com.scb.regbean.FirstPage"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show All</title>
<STYLE TYPE="text/css">

TD {font-family: Arial; font-size: 18pt;}
TH {font-family: Arial; font-size: 18pt;}
</STYLE>

<!--for auto response-->
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>
		<script type="text/javascript">
function func(){

var msg=document.getElementById("message");
responsiveVoice.speak(msg.value);
}

function loginn(){
	responsiveVoice.speak("welcome to account details page");
	}

function speak(y){
	//var msg=document.getElementById("message");
	responsiveVoice.speak(y.value);
	}

function log1(){
	responsiveVoice.speak("Click for going to home page");
	}

	function log2(){
	responsiveVoice.speak("Please go back to the previous page");
	}


</script>

</head>
<body style=" background-image: url('resources/image/background6.jpg');
    background-size: cover;"    onload="loginn()">
<form action="showac">

<h1>Last Transaction Details</h1>
<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<table border="3l" style="width:100%">

		<tr>
			<th>Name</th>
			<th>Account No.</th>
			<th>Last Transaction.</th>
			<th>Credit/Debit</th>
			<th>Total Amount</th>
			

		</tr>
		<%
	List<FirstPage> record = (List<FirstPage>)request.getAttribute("data1");
Iterator<FirstPage> lit = record.iterator();
while(lit.hasNext())
{
	FirstPage cc = lit.next();

%>
		<tr>
		
				
		    <td><%=cc.getFname()%></td>
		    <td><%=cc.getAcc() %></td>		
			<td><%=cc.getBlac()%></td>
			<td><%=cc.getCrdr()%></td>
			<td><%=cc.getTotal()%></td> 
			
</tr>
			<%
}
%>
		
	</table>
	</form>
	
	<br>
	<br>
	<p><a href="Transcation.jsp" class="w3-btn w3-block w3-green w3-border w3-xxlarge"onclick="particles.html" autocomplete="on"   onmouseover="log1()"><b>Home Page</b></a></p>
	
</body>
</html>