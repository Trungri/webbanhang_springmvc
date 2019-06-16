<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Change Password</title>
		<link rel="stylesheet" href="css/login.css">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<script src="js/jquery-3.3.1.min.js"></script>
	</head>
	<body class="bodydata">

	<%-- <form  method = "POST" action="changePass/change" id="login-form"> --%>
			<div id="login-form">>
				<h3>Change your password</h3>
				
				
				<input id="user" type="text" placeholder="Username" class="inputtext username" />
				<input id="passwordOld" type="text" placeholder="Old Password" class="inputtext password" />
				<input id="passwordNew" type="text" placeholder="New Password" class="inputtext password" />
				
				<!-- <input type="submit" value="Confirm" class="submitdata" > -->
				<button tyle="margin: auto; display: flex" class="btn btn-success" id="changeSubmit" name="submit" type="button">Submit</button>
				
				<br/>
				<a style="text-decoration: none" href="login">Login</a>
				
				<span id="message" style="color: gren"></span>
			</div>
			
		<%-- </form> --%>
	<script>
		$("#changeSubmit").click(function(){
			var username = $('#user').val();
			var passOld = $('#passwordOld').val();
			var passNew = $('#passwordNew').val();
			if ($.trim(username) == ''){
		        alert('Username not exist');
		        return false;
		    }
			if ($.trim(passOld) == ''){
		        alert('Password is not correct');
		        return false;
		    }
			$.ajax({
				method : "POST",
				url : "changePass/change",
				data : {
					"user" : username,
					"passwordOld" : passOld,
					"passwordNew" : passNew
				}

			}).done(function(msg) {
				$("#message").text(msg);
				
			}).fail(function(mess) {
				$("#message").text("Change password failed");
				
			});
		});
		
	</script>
	
	</body>
</html>