<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Delete Table</h1>
<form action="delete" method="post">
<h3>Enter your roll num for deleted data..</h3>
<input type="text" name="roll" placeholder="enter your roll num" required="required"><br>
<input type="submit" value="Delete">
<h3><a href="deleteTable.jsp">go</a></h3>

</form>
</center>
</body>
</html>