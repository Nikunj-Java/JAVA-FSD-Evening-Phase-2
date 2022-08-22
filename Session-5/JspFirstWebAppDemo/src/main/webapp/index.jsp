<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1> First JSP Demo</h1>

<!-- Scriptlet -->
<% out.print("Hello World"); %>

<% String name="Nikunj Soni"; %>
<br>
<!-- Expression -->


<%="My Name is :"+name %>

<br>
<!-- Declaration -->
<%! int cube(int n){
	return n*n*n;
}

%>

<%= "cube of 5 is: "+cube(5) %>

<br>

<%= new Date() %>

</body>
</html>