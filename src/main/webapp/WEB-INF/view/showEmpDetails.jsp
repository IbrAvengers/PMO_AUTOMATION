<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<title>Registration Page</title>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<style>
body {
	color:black;
}
</style>
</head>
<body>
<jsp:include page ="header.jsp"/>
	<div style="height: 86vh; color: black; text-align: center; border-radius: 0px; border: 1px solid red; margin-top: 10px;">
	<div style="color: white; text-align: center; font-size: 30px; background: red; padding: 10px; border-radius: 0px; border: 2px solid red; margin-top: 0px;">
		Employee Details Page
	</div>
		<table border="0" cellspacing="10" align="center" style="width: 30%; text-align: left; border: 1px solid red; margin-top: 30px;position: absolute;">
			<tr>
				<th width="40%">Employee Id :</th>
				<td>${result.getEmp_id()}</td>
			</tr>
			<tr>
				<th>First Name :</th>
				<td>${result.getFirst_name()}</td>
			</tr>

			<tr>
				<th>Last Name :</th>
				<td>${result.getLast_name()}</td>
			</tr>
			<tr>
				<th>IBM Mail ID :</th>
				<td>${result.getIbm_mail_id()}</td>
			</tr>
			<tr>
				<th>Phone Number :</th>
				<td>${result.getPh_number()}</td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
				<td align="left"><input style="font-size: 15px;color: black; text-align: center;padding: 10px 20px;border: 0px solid #ddd;border-radius: 10px;" type="button" value="Update"></td>
			</tr>
		</table>
	</div>
</body>
</html>