<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>My Custom Login Page</h3> 

	<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST"> 
		
		<c:if test="${param.error!=null}">
			<i style="color: red"> sorry wrong username or password</i>
		</c:if>
		
		<p>USERNAME : <input type="text" name="username"/> </p>
		<p>PASSWORD : <input type="password" name="password"/> </p>
		
		<input type="submit" value="login">
		 
	</form:form>

</body>
</html>