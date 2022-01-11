<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

TesterDAO dao = new TesterDAO();
TesterDTO currUserData = dao.login(id, pw);
session.setAttribute("currUserData", currUserData);

out.println("<script>");
out.println("alert('"+ currUserData == null ? "로그인 성공!" : "로그인 실패" + "');");
out.println("</script>");
response.sendRedirect(currUserData == null ? "loginView.jsp" : "selectTestView.jsp");
%>