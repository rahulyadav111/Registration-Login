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

<h1>welcome here ! <%=request.getAttribute("users") %></h1>
<a href="insert.jsp">insert..</a>
<a href="delete.jsp">delete..</a>
<a href="select.jsp">select..</a>
<a href="update.jsp">update..</a><br>
<h3><a href="Index.jsp">go main page</h3>


</center>

</body>
</html>