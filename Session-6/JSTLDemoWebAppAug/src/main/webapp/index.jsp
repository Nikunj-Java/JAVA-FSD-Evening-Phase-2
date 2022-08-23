<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- Downalod  jstl1.2 jar from java2s.com -->
<!-- link:http://www.java2s.com/Code/Jar/j/Downloadjstl12jar.htm -->

<c:set var="income"  value="${4000*50 }" scope="session"></c:set>

Income: <c:out value="${income }"></c:out>

<c:remove var="income"/>

<br>

After Remove Income: <c:out value="${income }"></c:out>


<br>

<!-- Exception Handling -->


<c:catch var="ex">
	
		<% int c=10/0; %>
	
</c:catch>

 Exception is: <c:out value="${ex }"></c:out>
 
 
 <!-- if in jstl -->
 
 <c:set var="test" value="7000"></c:set><br>

<c:if test="${test>500 }">

	<c:out value="the value is more than 500"></c:out><br>
</c:if>

<br>
<!-- if else -->


<c:choose>
	<c:when test="${test>1000 }">
		<c:out value="the value is more than 1000"></c:out><br>
	</c:when>
	<c:otherwise>
		<c:out value="the value is less than 1000"></c:out><br>
	</c:otherwise>

</c:choose>




</body>
</html>