<%@page import="com.hanul.study.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 인코딩 설정
request.setCharacterEncoding("utf-8");
// 넘어온 id 받기
String id = request.getParameter("id");

// checkIdValid로 id값을 보낸 후 동일한 id가 있는 지 체크이후 boolean타입으로 반환
MemberDAO dao = new MemberDAO();
boolean isIdVal = dao.checkIdValid(id);

out.println("<script>");
out.println("window.onload = () => {");	// 윈도우 로드가 끝나면
out.println("alert('"+ (isIdVal ? "사용가능한 아이디입니다" : "이미 존재하는 아이디입니다.") + "');"); // 알림을 보낸다.
out.println("history.back()");	// 그리고 뒤로 보낸다.
out.println("}");
out.println("</script>");

%>