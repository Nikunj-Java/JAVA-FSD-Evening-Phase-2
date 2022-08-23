<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- fetch data from database  we need to add mysql connector to lib folder -->


<!-- mysql configuration -->
<sql:setDataSource var="conn" 
driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost:3306/ecommerce"
user="root"
password="Nikunj@123"
/>


<sql:query var="result" dataSource="${conn }">

		select * from eproduct
</sql:query>


<table>

		<tr>
				<th>ID</th><th>Name</th><th>Price</th><th>Date</th>
		
		</tr>
		
		<c:forEach items="${result.rows }" var="p">
		<tr>
			<td><c:out value="${p.id }"></c:out>
			<td><c:out value="${p.name }"></c:out>
			<td><c:out value="${p.price }"></c:out>
			<td><c:out value="${p.date_added }"></c:out>
		</tr>
		
		</c:forEach>
</table>

</body>
</html>