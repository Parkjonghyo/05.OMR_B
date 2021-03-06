<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>B_Join</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/login&join.css">
<link rel="icon" href="images/Bicon.ico" type="image/x-icon" sizes="16x16">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="myform"> 
			<form action="join.jsp" method="post">
				<h2>WELCOME!</h2>
				<input type="text" name="name" placeholder="Name" required="required">
				<input type="text" id="id" name="id" placeholder="Admin Id" required="required">
				<button type="button" class="btn_chek" onclick="checkIdValid()">중복확인</button>
				<input type="password" name="pw" id="pw" placeholder="Password" required="required">
				<div class="check_font" id="pw_check"></div><br>
				<button type="submit" id="submit">JOIN</button>
				<button type="button" onclick="location.href='loginView.jsp'">MAIN</button> 
			</form>
		</div>
	<div class="image">
		<img src="images/cat1.png" width="300px">
	</div>
	</div>
	<script type="text/javascript">
		checkIdValid = () => {
			location.href=`checkIdValid.jsp?id=\${$("#id").val()}`;
		}
		
		var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/;
		$("#pw").blur(function(){
			if(pwCheck.test($("#pw").val())){
				$("#pw_check").text("");
				$("#submit").removeAttr("disabled");
			}else{
				$("#pw_check").text('특수문자, 대문자, 소문자, 숫자 1개 이상 포함!');
				$("#pw_check").css("color", "red");
				$("#pw_check").css("font-size", "12px");
				$("#submit").attr("disabled", "disabled");
			}
		})
	</script>
</body>
</html>