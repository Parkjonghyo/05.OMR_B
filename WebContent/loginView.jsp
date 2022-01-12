<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B_Login</title>
<link rel="stylesheet" href="css/login&join.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<div class="container">
		<div class="myform">
			<form action="login.jsp" method="post">
				<h2>ADMIN LOGIN</h2>
				<input type="text" name="id" placeholder="Admin Id" required="required">
				<input type="password" name="pw" placeholder="Password" required="required"><br>
				<button type="submit">LOGIN</button>
				<button type="button" onclick="location.href='joinView.jsp'">JOIN</button>
			</form>
		</div>
	<div class="image">
		<img src="images/cat1.png" width="300px">
	</div>
	</div>
</body>
</html>