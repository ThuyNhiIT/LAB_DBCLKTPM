<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
	<title> Student Registration Information</title>
</head>
<body>
<f:form>
		First Name: <f:input path="firstName"/>
		<br><br>
		Last Name: <f:input path="lastName"/>
		<br><br>
	   <input type="submit" value="submit"/>
	</f:form>