<%@page import="com.hanul.study.TesterDTO"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
ArrayList<Boolean> isCorrList = (ArrayList<Boolean>) request.getAttribute("isCorrList");
ArrayList<TestDTO> tests = (ArrayList<TestDTO>) session.getAttribute("tests");
ArrayList<String> answers = (ArrayList<String>) request.getAttribute("answers");

TesterDTO dto = (TesterDTO) session.getAttribute("currUserData");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험 결과</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<%
//만약 유저가 로그인되어있지 않다면 login페이지로 가도록
if(dto == null){
	out.println("<script>alert('로그인 후에 이용해주세요')");  
	out.println("location.href='loginView.jsp'</script>");
	// 위의 href 경로는 알아서 맞춰주시길.
}
%>
</head>
<body>

</body>
</html>