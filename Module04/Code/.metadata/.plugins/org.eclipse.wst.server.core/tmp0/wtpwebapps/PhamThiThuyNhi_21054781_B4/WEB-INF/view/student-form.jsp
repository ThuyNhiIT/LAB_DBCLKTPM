<%@ page pageEncoding="UTF-8" language="java" contentType="text/html charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        
        <form:form action="processForm" modelAttribute="student" >
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
	<br><br>
        <%-- <form:select path="country">
            <form:option value="Brazil" label="Brazil"/>
            <form:option value="France" label="France"/>
            <form:option value="Germany" label="Germany"/>
            <form:option value="India" label="India"/>
	</form:select>--%>
       <form:select path="country">
            <form:options items="${student.countryOptions}" />
        </form:select> 
        <br><br>
        Favorite Language:
        <!--  read the list of countries from a Java class? -->
        
        <form:radiobuttons path="favoriteLanguage" 
                 items="${student.favoriteLanguageOptions}"  />
        <br><br>
        Operating Systems:
        Linux <form:checkbox 
            path="operatingSystems" value="Linux" />
        Mac OS <form:checkbox 
            path="operatingSystems" value="Mac OS" />
        MS Windows <form:checkbox 
            path="operatingSystems" value="MS Windows" />
        
       
        
         <form:checkboxes path="operatingSystems"
                          items="${student.operatingSystemOptions}" />
        <br><br>
	<input type="submit" value="submit"/>
        </form:form>
    </body>
</html>
