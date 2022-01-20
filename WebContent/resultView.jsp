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
System.out.println(answers.get(0));
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
<h1>시험 결과</h1>
<h3><%=dto.getName() %></h3>
<table border="1">
	<tr>
		<th></th>
		<%for (int i=0; i<tests.size(); i++) {%>
		 <th><%=i+1 %></th><%} %>
	</tr>
	<tr>
	<th>정답</th>
		<%for (int i=0; i<tests.size(); i++) {%>
		 <td><%=tests.get(i).getAnswer() %></td><%} %>
	</tr>
	<tr>
	<th>내가 쓴 답</th>
		<%for (int i=0; i<tests.size(); i++) {%>
		 <td><%=answers.get(i) %></td><%} %>
	</tr>
	<tr>
		<th>확인</th>
			<%for (int i=0; i<tests.size(); i++) {%>
		 <td><%= (isCorrList.get(i) == true) ? "O" : "X" %></td><%} %>
	</tr>
	<%int score = 0; %>
	<%for ( boolean i : isCorrList) 
	{if(i == true) {
		score += 10; }
	}
	%>
	<tr align="center">
	<td colspan="11">시험 결과 <% if(score >= 60) { %> 
		합격 
	<% } else { %>
		불합격
	<% } %>
	<%-- <% if(score >= 60) { 
		out.println("합격"); 
	} else {
		out.println("불합격");
	}
		%> --%> </td>
	</tr>
		 
</table>
</body>
</html>