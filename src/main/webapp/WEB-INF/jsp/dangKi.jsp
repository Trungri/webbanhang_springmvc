<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Login form</title>
		<link rel="stylesheet" href="css/login.css">
	</head>
	<body class="bodydata">
		<form action="dangKy/userDK" method="POST" id="login-form">
			
				<h3>Sign up</h3>
			
			
			<input type="text" name="user" placeholder="User name" class="inputtext username" >
			<input type="text" name="pass" placeholder="Password" class="inputtext password">
			<input type="text" name="fullname" placeholder="Full name" class="inputtext password">
			<div>
				<input type="checkbox">
				Remember me
			</div>
			<input type="submit" value="Sign up" class="submitdata" ">
		</form>
	</body>
</html>