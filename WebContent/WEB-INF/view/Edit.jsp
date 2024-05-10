<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="form correction.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<style>
  body, html {
    height: 100%;
    margin: 0;
    padding: 0;
}w

#outer {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-image: url("editformbg.png");
    background-size: cover;
    background-repeat: no-repeat;
}

#inner {
    background-color: rgba(255, 255, 255, 0.9);
    width: 550px;
    max-width: 100%;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}
</style>
<body>
    <div id="outer">
    
        <div id="inner">
            <div id="form">
                
                  <h1 id="head">EDIT</h1>
                  <form action="../updateTest" method="post" class="text-center">
                  <pre>
                  <c:forEach var="doo" items="${listdo}" >
                    <table>
                    <tr><th>AssetID:</th>
                    <td><input type="text" name="assetid" value="${doo.assetid}" disabled="disabled" />
                    <input type="hidden" name="assetid" value="${doo.assetid}" />	
                    </td>
		                </tr>		
                        <tr>
                            <th>Price:</th>
                            <td><input name="price" value="${doo.price}" /></td>
                        </tr>
                         <tr>
                            <th>Status:</th>
                            <td><input name="status" value="${doo.status}" ></td>
                        </tr>
                        
                        <tr>
                            <th>AssignedTo:</th>
                            <td><input name="assignedto" value="${doo.assignedto}" ></td>
                        </tr>
                        
                        <tr>
                            <th>IsActive:</th>
                            <td><input name="isactive" value="${doo.isactive}" ></td>
                        </tr>
                    </table>
                    <tr>
                    <td colspan="2" align="center"><input type="submit" value="Update" /></td>
                </tr>
                 </c:forEach>
                 </pre>
                </form>
                ${msg}
            </div>
            <button class="btn btn-primary" onclick="goBack()">Back</button>
            
            <script>
                function goBack() {
                    window.history.back();
                }
            </script>
        </div>
    </div>
    
    
</body>
</html>