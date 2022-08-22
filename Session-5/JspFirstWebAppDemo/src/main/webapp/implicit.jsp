<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    errorPage="error.jsp"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String respCheck= request.getParameter("office");

if(respCheck!=null){
	response.setStatus(response.SC_MOVED_TEMPORARILY);
	response.setHeader("Location", "response-redirect.jsp?office="+respCheck);
}
%>


<%
String error= request.getParameter("error");

if(error!=null){
	throw new RuntimeException("Exceprion Occureed");
}

%>

<h1>Implicit Object demo</h1>

<a href="implicit.jsp?office=head_office">Check Use of Response and Request</a><br>


<a href="implicit.jsp?error=1">Check Use of Exception Object</a><br>

</body>
</html>