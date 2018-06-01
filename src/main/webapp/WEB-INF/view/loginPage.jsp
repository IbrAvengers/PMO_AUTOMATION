<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<title>Login Page</title>
<style>
body 
	{ background-image:url("./images/login-background-image_1.jpg"); }
</style>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<script>
	function validateLogin() {
		var username = document.loginForm.username.value;
		var password = document.loginForm.password.value;
		if (username == null || username == "") {
			alert("Please enter the username.");
			return false;
		}
		if (password == null || password == "") {
			alert("Please enter the password.");
			return false;
		}
		document.userForm.submit();

	}
	function signUp() {
		location.href = '/EmpServices/signUpEmp';
	}
</script>
</head>
<body>
	<div class="loginDiv">
		<p style="margin-top: 10px;">SIGN IN</p>
		<form:form action="showHomePage" modelAttribute="loginForm"
			name="loginForm" method="post">
			<table align="center" style="border-spacing: 13px;">
				<tr>
					<td><form:input path="username"
							style="width: 250px;height:25px;" placeholder="Username" /></td>
				</tr>
				<tr>
					<td><form:password path="password"
							style="width: 250px;height:25px;" placeholder="Password" /></td>
				</tr>
				<tr>
					<td><button type="submit" style="width: 250px; height: 30px;"
							onclick="return validateLogin()">Login</button></td>
				</tr>
				<tr>
					<td><button type="button" style="width: 250px; height: 30px;"
							onclick="javascript:signUp()">SignUp</button></td>
				</tr>
			</table>
		</form:form>
		<div style="color: red;font-size: 15px;">
			${errormessage}
		</div>
		<div>
			<p>
				Forgot password? <a href="reset">Click here to reset it.</a>
			</p>
		</div>
	</div>

</body>
</html>
