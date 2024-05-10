<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<style>
.error {
	color: red
}
</style>
</head>
<body>
<div id="outer">

     <div id="innaer" align="center">
        <form:form action="verify"  modelAttribute="login" method="post" >
            <table border="0">
                <tr>
                    <td colspan="2" align="center"><h2>LOGIN</h2></td>
                </tr>
                <tr>
                    <td>UserID:</td>
                    <td><form:input path="userid" /></td>
                    <td><form:errors path="userid" cssClass="error" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><form:input type="password" path="password" /></td>
                    <td><form:errors path="password" cssClass="error" /></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="SUBMIT" /></td>
                </tr>
            </table>
        </form:form>
        </div>
    </div>

</body>
</html>