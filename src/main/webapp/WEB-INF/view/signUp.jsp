<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Page</title>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<style>
body { 
	background: #47476b;
}
</style>
<script>

	function validateSignUp() {
		var empid = document.signUpForm.emp_id.value;
		var firstname = document.signUpForm.first_name.value;
		var lastname = document.signUpForm.last_name.value;
		var mailid = document.signUpForm.ibm_mail_id.value;
		var phnumber = document.signUpForm.ph_number.value;
		var password = document.signUpForm.password.value;
		var confirmpassword = document.signUpForm.confirm_password.value;

		if (empid == null || empid == "") {
			alert("Please enter employee id");
			return false;
		}
		if (firstname == null || firstname == "" && lastname == null
				|| lastname == "") {
			alert("Please enter the firstname and lastname");
			return false;
		}
		if (mailid == null || mailid == "") {
			alert("Please enter ibm mail id");
			mailid.focus;
			return false;
		}

		if (mailid != null || mailid != "") {
			var reg = new RegExp("^([A-Za-z0-9_\\.])+@([A-Za-z])+.ibm.com$");
			if (!reg.test(mailid)) 
			{
				alert("This email is not valid.");
				return false;
			} 
		}
		if (phnumber == null || phnumber == "") {
			alert("Please enter your contact number");
			return false;
		}
		if (password == null || password == "") {
			alert("Please enter the password.");
			return false;
		}
		if (password != confirmpassword) {
			alert("password not matched")
			return false;
		}
	}
</script>
</head>
<body>
	<div class="signupDiv">
		<p style="margin-top: 10px;">SIGN UP</p>
		<p style="margin-top: 8px;">Please fill in this form to create an account</p>
		<form:form action="saveEmpDetails" modelAttribute="signUpForm" name="signUpForm" method="post">
			<table align="center" style="border-spacing: 13px;">
				<tr>
					<td><form:input path="emp_id" style="width: 250px;height:25px;" placeholder="Employee Id" /></td>
				</tr>
				<tr>
					<td><form:input path="first_name" style="width: 250px;height:25px;" placeholder="First Name" /></td>
				</tr>
				<tr>
					<td><form:input path="last_name" style="width: 250px;height:25px;" placeholder="Last Name" /></td>
				</tr>
				<tr>
					<td><form:input path="ibm_mail_id" style="width: 250px;height:25px;" placeholder="IBM Mail Id" /></td>
				</tr>
				<tr>
					<td><form:input path="ph_number" style="width: 250px;height:25px;" placeholder="Contact Number" /></td>
				</tr>
				<tr>
					<td><form:password path="password" style="width: 250px;height:25px;" placeholder="Password" /></td>
				</tr>
				<tr>
					<td><form:password path="confirm_password" style="width: 250px;height:25px;" placeholder="Confirm Password" /></td>
				</tr>
				<tr>
					<td><button type="submit" style="width: 250px; height: 30px;" onclick="return validateSignUp()">Signup</button></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>

