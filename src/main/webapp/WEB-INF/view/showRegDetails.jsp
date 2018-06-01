<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<title>Registration Page</title>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<style>
body {
	background: #47476b;
}
</style>
</head>
<body>
	<div class="showEmpDetails">
		<table>
			<tr>
				<td>Emp Id</td>
				<td>${result.getEmp_id()}</td>
			</tr>
			<tr>
				<td>First Name</td>
				<td>${result.getFirst_name()}</td>
			</tr>
			<tr>
				<td>Last Name</td>
				<td>${result.getLast_name()}</td>
			</tr>
			<tr>
				<td>IBM Mail ID</td>
				<td>${result.getIbm_mail_id()}</td>
			</tr>
			<tr>
				<td>Phone Number</td>
				<td>${result.getPh_number()}</td>
			</tr>
			
		</table>
	</div>
	
	<a style="align:center" href="${pageContext.request.contextPath}/showLogin">Login</a>
</body>
</html>