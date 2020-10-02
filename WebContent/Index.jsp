<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login!</title>

<style>
*{
		
		margin: 0;
		padding: 0;
		box-sizing: border-box;
		
	}
	body{
		min-height: 100px;
		background: #eee;
		display: flex;
		font-family: sans-serif;
		
	}
	.container{

		height:450px;		
		width: 400px;
		margin-left:100%;
		margin-top:10%;
		max-width: 100%;
	}
	.container form
	{
		width: 100%;
		height: 100%;
		padding: 30%;
		background: white;
		border-radius: 4px;
		box-sizing: 0 8px 16px rgba(0,0,0,3); 

	}
	.inputfield{
	padding: 4px;
	border-radius: 3px;
	
	}
	
	.container form h1{
		text-align: center;
		margin-bottom: 24px;
		color: #222px; 
		}
		
		.container form .form-control{

					width: 100%;
					height: 40px;
					background: white;
					border-radius: 4px;
					border: 1px solid silver;
					margin: 10px 0 18px 0;
					padding: 20px ;

				}
				
				.container form .btn
				{
					margin-left: 10%;
					transform: translateX(-400);
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


container form .btn:hover{
opacity: 1;

}

</style>

</head>
<body>
<center>

<div class="container">



<form action="Login" method="post">

<div>
<h3>Login! here</h3><br>

<label>UserName</label><br> 

<div class="field">
<input type="text" name="username" placeholder="Enter username" class="inputfield" /required><br>

</div>
</div><br>


<div class="form-group">
<label>Password</label><br>

<div class="field">
 <input type="password" name="password" placeholder="Enter username" class="inputfield" /required><br><br>
 <input type="submit" class="btn" value="Login!">


</div>
</div><br>

<a href="registers.jsp">new user!</a> 

</form>
</center>

</div>

</body>
</html>