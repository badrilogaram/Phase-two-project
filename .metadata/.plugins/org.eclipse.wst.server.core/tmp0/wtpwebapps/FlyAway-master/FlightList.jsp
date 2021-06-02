<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.util.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:rgb(230,230,230)">
<br>
<center>
<a href=HomePage.jsp style="color:black;text-decoration:none;font-size:35px;font-weight:bold;">FlyAway</a>
<h3><center>An Airline Booking Portal</center></h3>
</center>
<br><br>
<%
	@SuppressWarnings("unchecked")
	List<String[]> flights=(List<String[]>)session.getAttribute("flights");
	if(flights!=null){
%>
<center>
<h1>Available Flights</h1>
<div style="border:5px solid Navy;width:50%;border-radius:20px;padding:20px">
<pre style="font-size:20px">
Name		Time		Price
</pre>

<%
	for(String[] flight:flights){
%>
<div style="border:5px solid tomato;width:65%;border-radius:20px;padding:10px">
<pre style="font-size:17px">
<%=flight[0]%>	<%=flight[1]%>		<%=flight[2]%>
<a href=BookFlight.jsp>Book Now</a>
</pre>
</div>
</center>
<%
	}
%>
</div>
<%
	}
	else{
%>
<h1>There are no available flights</h1>
<%
	}
%>
</body>
</html>