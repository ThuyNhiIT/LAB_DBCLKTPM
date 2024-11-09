<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Customer Confirmation</title>
</head>
<body>
	The customer is confirmed: ${customer.firstName} ${customer.lastName}
	<br>
	<br> Free passes: ${customer.freePasses}
	<br>
	<br> Postal Code: ${customer.postalCode}
	<br>
	<br> Course code: ${customer.courseCode}
</body>
</html>










