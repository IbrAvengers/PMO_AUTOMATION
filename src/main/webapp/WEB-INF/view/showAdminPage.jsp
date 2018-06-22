<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Page</title>
<link rel="stylesheet" href="./CSS/pmoservice.css">
<style>
body {
	background: #47476b;
}
</style>
</head>
<body>
<jsp:include page ="header.jsp"/>
	<div class="showEmpDetails">
		Admin Page
		<table>
			<tr>
				<td>Emp Id</td>
				<td>Emp FN</td>
				<td>Emp LN</td>
				<td>Emp PHNO</td>
			</tr>
			<c:forEach items="${result}" var="emps">
				<tr>
					<td>${emps.getEmp_id()}</td>
					<td>${emps.getFirst_name()}</td>
					<td>${emps.getLast_name()}</td>
					<td>${emps.getPh_number()}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<a style="align: center"
		href="${pageContext.request.contextPath}/showLogin">Login</a>
</body>
</html>