<%@page import="com.hanul.study.TesterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
// 로그인 중인 유저의 데이터를 가져옴.
TesterDTO dto = (TesterDTO) session.getAttribute("currUserData");

// 만약 유저가 로그인되어있지 않다면 login페이지로 가도록
if(dto == null){
	out.println("<script>alert('로그인 후에 이용해주세요')");  
	out.println("location.href='../loginView.jsp'</script>");
	// 위의 href 경로는 알아서 맞춰주시길.
}

%>
