<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login form</title>
		<link rel="stylesheet" href="css/login.css">
	</head>
	<body class="bodydata">

	<form  method = "POST" action="login/authenticate" id="login-form">
			
			<h3>Please sign in</h3>
			
			
			<input name="user" type="text" placeholder="Username" class="inputtext username" />
			<input name="password" type="text" placeholder="Password" class="inputtext password" />

			<div>
				<input type="checkbox">
				Remember me
			</div>
			<input type="submit" value="Login" class="submitdata" >
			<br/>
			<a style="text-decoration: none" href="register">Register now</a>
			<br/>
			<a style="text-decoration: none"  href="changePass">Change Password</a>
			
		</form>
	
	
	</body>
</html>