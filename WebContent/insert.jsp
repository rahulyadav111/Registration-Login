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

<h1>Welcome to Home page !</h1>
<form action="insert" method="post">

Roll Num:<input type="number" name="roll" placeholder="number enter here" /required><br><br>
First name:<input type="text" name="fname" placeholder="enter here" /required><br><br>
Last name :<input type="text" name="lname" placeholder="enter here" /required><br><br>
Address : <input type="text" name="add" placeholder="enter here" required><br><br>
Email  :<input type="text" name="email" placeholder="enter here" required><br><br>
mobile  :<input type="number" name="mobile" placeholder="number enter here" required><br><br>
course  :<input type="text" name="course" placeholder="enter here" required><br><br>
D-O-B  :<input type="date" name="dob" placeholder="enter here" required><br><br>
<input type="submit" value="insert">

</form>

</center>

</body>
</html>