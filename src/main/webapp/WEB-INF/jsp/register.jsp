<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" href="css/login.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
</head>
<body class="bodydata">

	<%-- <form  method = "POST" action="register/add" id="login-form"> --%>
	<div id="login-form">
		<h3>Sign up</h3>


		<input id="user" type="text" placeholder="Username" class="inputtext username" />
		<input id="fullname" type="text" placeholder="FullName" class="inputtext username" />
		<input id="passwordNew" type="password" placeholder="New Password" class="inputtext password" />
		<input id="password2" type="password" placeholder="Repeat Password" class="inputtext password" />

		<!-- <input type="submit" value="Sign Up" class="submitdata" > -->

		<button style="margin: auto; display: flex" class="btn btn-success" id="registerBtn" name="submit" type="button">Register</button>



		<br /> <a style="text-decoration: none" href="login">Login</a> <br />
		<span id="message" style="color: gren"></span>
		<span id="messageError" style="color: red"></span>
		<%-- </form> --%>
	</div>
	<script>
		$("#registerBtn").click(function() {
			var username = $('#user').val();
			var fullname = $('#fullname').val();
			var password = $('#passwordNew').val();
			var pass2 = $('#password2').val();
			if ($.trim(username) == ''){
		        alert('Username not exist');
		        return false;
		    }
			if ($.trim(fullname) == ''){
		        alert('Fullname not exist');
		        return false;
		    }
			
			
			/* if(username == "" && fullname == "" && password == "" && pass2 == ""){
				$("#messageError").text("Fill in the form");
			}else  */
			if(password == pass2){
				$.ajax({
					method : "POST",
					url : "register/add",
					data : {
						"user" : username,
						"fullname" : fullname,
						"passwordNew" : password
					}

				}).done(function(msg) {
					$("#message").text(msg);
					$("#messageError").text("");
				});
			}else{
				$("#messageError").text("Password is not matched.");
			}
			
		});
	</script>

</body>
</html>