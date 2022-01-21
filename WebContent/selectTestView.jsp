<%@page import="com.hanul.study.TesterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
TesterDTO dto = (TesterDTO) session.getAttribute("currUserData");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>subject</title>
<link rel="stylesheet" href="css/subject.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/Bicon.ico" type="image/x-icon" sizes="16x16">
<%
//만약 유저가 로그인되어있지 않다면 login페이지로 가도록
if(dto == null){
	out.println("<script>alert('로그인 후에 이용해주세요')");  
	out.println("location.href='loginView.jsp'</script>");
	// 위의 href 경로는 알아서 맞춰주시길.
}
%>
<style>
body{
background: #E8EDF2;	
}
</style>
</head>
<body>
<div class="container">
	<div class="card-box">
		<a href="selectTest.jsp?subNo=2"> 
			<img src="images/cat-quiz.jpg" alt="고양이">
		</a>
		<div class="text-wrap">
			<h1>Cat-Quiz</h1>
			
		</div>
	</div>
	<div class="card-box">
		<a href="selectTest.jsp?subNo=1">
		<img src="images/dog-quiz.jpg" alt="강아지">
		</a>
		<div class="text-wrap">
			<h1>Dog-Quiz</h1>
		</div>
	</div>
</div>
</body>
</html>