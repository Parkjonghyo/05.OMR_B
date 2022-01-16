<%@page import="com.hanul.study.MemberDAO"%>
<%@page import="com.hanul.study.TesterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 인코딩 설정 & 매개변수 받아오기
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

// 로그인 후, 세션에 유저데이터 저장
MemberDAO dao = new MemberDAO();
TesterDTO currUserData = dao.login(id, pw);
session.setAttribute("currUserData", currUserData);

out.println("<script>");
out.println("window.onload = () => {");
out.println("alert('" + (currUserData == null ? "로그인 실패!" : "로그인 성공") + "');"); // null일 시 로그인 실패인 것이니 실패, 존재할 시 성공이니 성공을 보냄
out.println("window.location.href = '" + (currUserData == null ? "loginView.jsp" : "selectTestView.jsp") + "'"); // 실패 시 로그인화면, 성공 시 시험화면으로.
out.println("}");
out.println("</script>");

%>