<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Product Details using JSTL</h1>

<form action="sqladd.jsp" method="post" scope="session">
Product Name: <input type="text" name="pname"><br>
Price: <input type="number" name="pprice"><br>
<input type="submit" value="Save">
</form>
</body>
</html>