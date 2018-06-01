<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<div class="showEmpDetails">
		Error Page
		${error}
	</div>
	<a style="align:center" href="${pageContext.request.contextPath}/showLogin">Login</a>
</body>
</html>