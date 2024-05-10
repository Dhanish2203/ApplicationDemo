<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Asset Form...</title>
</head>
<style>

.container {
    max-width: 768px; 
    margin: 0 auto;
    padding: 20px;
}

.error {
	color: red
}
#head {
    color: #35b2b6;
    font-size: 30px;
}

form {
    text-align: left;
}


input[type="text"],
input[type="date"],
textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="radio"] {
    margin-right: 5px;
}

.btn {
    cursor: pointer;
}

@media (max-width: 576px) {
    /* Adjust styles for smaller screens */
    #inner {
        margin-top: 20px;
        margin-left: 0;
    }
    #head {
        padding-left: 0;
    }
}
body, html {
    height: 100%;
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

#outer {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background-size: cover;
    background-repeat: no-repeat;
}

#inner {
   
    overflow: auto;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    width: 550px;
    max-width: 100%;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
</style>

<body>

<div id="outer">
    
        <div id="inner">
            <div id="form">
            <form:form action="createTest"  modelAttribute="userForm" method="post" id="add" class="text-center">
               
                  <h1 id="head">ADD FORM</h1>
                    <table>
						<tr>
							<th>AssetID:</th>
							<td><form:input path="assetid" /></td>
							<form:errors path="assetid" cssClass="error" />
						</tr>

						<tr>
                            <th>ProductName:</th>
                             <td><form:input path="productname" /></td>
                             <form:errors path="productname" cssClass="error" /></td> 
                        </tr>
                        <tr>
                            <th>Model Number:</th>
                             <td><form:input path="modelnumber" /></td>
                             <form:errors path="modelnumber" cssClass="error" /></td> 
                        </tr>
                        
                       
                        <tr>
                            <th>Date of purchase:</th>
                             <td><form:input path="dateofpurchase" /></td>
                            <form:errors path="dateofpurchase" cssClass="error" /></td> 
                        </tr>
                        
                        <tr>
                            <th>Price:</th>
                             <td><form:input path="price" /></td>
                            <form:errors path="price" cssClass="error" /></td>
                        </tr>
                        <tr>
                            <th>Status:</th>
                           <td><form:input path="status" /></td>
                           <form:errors path="status" cssClass="error" /></td>
                        </tr>
                        <tr>
                            <th>Assigned To:</th>
                             <td><form:input path="assignedto" /></td>
                            <form:errors path="assignedto" cssClass="error" /></td> 
                        </tr>
                        <tr>
                         <th>IsActive:</th>
                         <td><form:input path="isactive" /></td>
                         <form:errors path="isactive" cssClass="error" /></td> 
                      </tr>
                      <tr>
                      <td><input type="submit" value="Submit" /></td>
                      </tr>
                    </table>
                    </form:form>
                    ${msg}                         
                    </div>
                    <button onclick="goBack()">Back</button>
            
            <script>
                function goBack() {
                    window.history.back();
                }
            </script>
                </div>
                </div>
                

</body>
</html>