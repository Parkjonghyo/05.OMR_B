<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B_Join</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/login&join.css">
</head>
<body>
	<div class="container">
		<div class="myform"> 
			<form action="join.jsp" method="post">
				<h2>WELCOME!</h2>
				<input type="text" name="name" placeholder="Name" required="required">
				<input type="text" name="id" placeholder="Admin Id" required="required">
				<button type="button" class="btn_chek" onclick="location.href='checkIdValid.jsp'">중복확인</button>
				<input type="password" name="pw" placeholder="Password" required="required"><br>
				<button type="submit">JOIN</button>
				<button type="button" onclick="location.href='loginView.jsp'">MAIN</button> 
			</form>
		</div>
	<div class="image">
		<img src="images/cat1.png" width="300px">
	</div>
	</div>

</body>
</html>