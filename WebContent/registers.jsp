<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

*{
		margin: 0;
		padding: 0;
		box-sizing: border-box;
	}
	body{
		min-height: 100vh;
		background: #eee;
		display: flex;
		font-family: sans-serif;
	}
	.container{

		margin: 40px 40px 20px 30%;
		width: 900px;
		max-width: 40%;
	}
	
	.inputfield{
	padding: 5px;
	border-radius: 4px;
	
	
	}
	.container form
	{
		width: 100%;
		height: 100%;
		padding: 20%;
		background: white;
		border-radius: 4px;
		box-sizing: 0 8px 16px rgba(0,0,0,3); 

	}
	.container form h1
	{
		text-align: center;
		margin-bottom: 24px;
		color: #222px; 

	}
	
	.container form .form-control
	{

		width: 100%;
		height: 40px;
		background: white;
		border-radius: 4px;
		border: 1px solid silver;
		margin: 10px 0 18px 0;
		padding: 20px ;
	}
	.container form .btn{
	margin-left: 10%;
	transform: translateX(-500);
	width: 100px;
	height: 34px;
	border: none;
	outline: none;
	background: #27a327;
	cursor: pointer;
	font-size: 16px;
	text-transform: uppercase;
	color: white;
	border-radius: 4px;
	transition: .3s;
}
	



</style>
</head>
<body>
<center>

<div class="container">
	<form action="registers" method="post">

	<div class="form-group">

		<h3>Welcome to Register page !</h3><br>
		
		<div class="field">
		
			<label>User Name</label><br>
			<input type="text" name="uname" placeholder="Enter user name" class="inputfield" required="required"><br>

		</div>
	</div><br>
	
		<div class="form-group">

			<label>Name </label><br>
			<div class="field">
				<input type="text" name="name" placeholder="Enter name" class="inputfield" required="required"><br>
			</div>
		</div><br>

		<div class="form-group">
		
			<label>Father Name </label><br>
			<div class="field">
					<input type="text" name="fname" placeholder="Enter father name" class="inputfield" ><br>
			</div>
		</div><br>
		
		<div class="form-group">
			<label>Date-of-birth</label><br>
			<div class="field">
				<input type="date" name="dob"  value="Apr-14-1997" class="inputfield" ><br>
			</div>
		</div><br>
		
		<div class="form-group">
			<label>Password </label><br>
			<div class="field">
				<input type="password" name="pass" placeholder="Enter password" class="inputfield" required="required"><br>
			</div>
		</div><br>
		
		<div class="form-group">
			<label>Gender</label><br>
			<div><br>
				<label>male</label>
				<input type="radio" name="gender" value="male">
				<label>Female</label>
				<input type="radio" name="gender" value="Female">
				<label>other</label>
				<input type="radio" name="gender" value="other">
			</div>
		</div><br>
<input type="submit" class="btn" value="Register">

</form>

</div>
</center>
</body>
</html>