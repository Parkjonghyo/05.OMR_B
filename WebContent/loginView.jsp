<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B_Login</title>
<link rel="stylesheet" href="css/login&join.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/Bicon.ico" type="image/x-icon" sizes="16x16">
<script type="text/javascript">
function check() {
	if(!document.member.id.value){
		alert("ID를 입력하세요");
		document.member.id.focus();
		return false;
	}
	if(!document.member.pw.value){
		alert("비밀번호를 입력하세요");
		document.member.pw.focus();
		return false;
	}
}
</script>
</head>
<body>
	<div class="container">
		<div class="myform">
			<form action="login.jsp"name="member" method="post" onsubmit="return check()">
				<h2>ADMIN LOGIN</h2>
				<input type="text" name="id" placeholder="Admin Id">
				<input type="password" name="pw" placeholder="Password" ><br>
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