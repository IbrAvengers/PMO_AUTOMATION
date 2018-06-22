<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<title>Manager Page</title>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<style>
/* body {
	background: #47476b;
} */
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div style="height: 86vh; color: black; text-align: center; border-radius: 0px; border: 1px solid red; margin-top: 10px;">
		<div style="color: white; text-align: center; font-size: 30px; background: red; padding: 10px; border-radius: 0px; border: 2px solid red; margin-top: 0px;">
			Manager Details Page
		</div>
		<br />
		<div style="color: black; text-align: center; font-size: 20px; padding: 10px; border-radius: 0px; border: 1px solid red; margin-top: 0px;height: 40%;">
			<table border="0" cellspacing="10" align="left" style="width: 30%; text-align: left; border: 0px solid red; margin-top: 30px;">
			<tr>
				<th width="40%">Employee Id :</th>
				<td>${manager.getEmp_id()}</td>
			</tr>
			<tr>
				<th>First Name :</th>
				<td>${manager.getFirst_name()}</td>
			</tr>

			<tr>
				<th>Last Name :</th>
				<td>${manager.getLast_name()}</td>
			</tr>
			<tr>
				<th>IBM Mail ID :</th>
				<td>${manager.getIbm_mail_id()}</td>
			</tr>
			<tr>
				<th>Phone Number :</th>
				<td>${manager.getPh_number()}</td>
			</tr>

			<tr>
				<td>&nbsp;</td>
				<td align="left">
					<input style="font-size: 15px; color: black; text-align: center; padding: 10px 20px; border: 0px solid #ddd; border-radius: 10px;" type="button" value="Update">
				</td>
			</tr>
		</table>
		</div>
		
		<div style="color: black; text-align: left; font-size: 20px; padding: 10px; border-radius: 0px; border: 1px solid red; margin-top: 0px;">
			My Reportees
		</div>
		<div style="color: black; text-align: center; font-size: 20px; padding: 0px; border-radius: 0px; border: 1px solid red; margin: 0px;height: 36.7%;overflow: auto">
		<table border="0" cellspacing="10" align="center" style="width: 100%; text-align: left; margin: 0px;">
				<tr>
					<th>Employee Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Phone Number</th>
					<th>Intranet Id</th>
					<th>Project</th>
				</tr>
				<c:forEach items="${result}" var="emps">
					<tr>
						<td>${emps.getEmp_id()}</td>
						<td>${emps.getFirst_name()}</td>
						<td>${emps.getLast_name()}</td>
						<td>${emps.getPh_number()}</td>
						<td>${emps.getIbm_mail_id()}</td>
						<td>${emps.getProject()}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
	</div>

</body>
</html>