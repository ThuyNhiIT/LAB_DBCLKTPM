<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
	<title> Student Confirmation</title>
</head>
<body>
    The student is confirmed: 
    ${student.firstName} ${student.lastName}
    <br><br>
    Country: ${student.country}
    <br><br>
    Favorite Language: ${student.favoriteLanguage}
    <br><br>
    Operating Systems:
    <ul>
        <c:forEach var="temp" items= "${student.operatingSystems}">
            <li> ${temp}  </li>
        </c:forEach>
         <a href="showForm">Back to Form </a>
    </ul>
</body>

</html>