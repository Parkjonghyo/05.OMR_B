<%@page import="com.hanul.study.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");

MemberDAO dao = new MemberDAO();
boolean isIdVal = dao.checkIdValid(id);

out.println("<script>");
out.println("window.onload = () => {");
out.println("alert('"+ (isIdVal ? "사용가능한 아이디입니다" : "이미 존재하는 아이디입니다.") + "');");
out.println("history.back()");
out.println("}");
out.println("</script>");

%>