<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");

TesterDAO dao = new TesterDAO();
TesterDTO dto = new TesterDTO();
boolean succ = false;
dto.setId(id);
dto.setPw(pw);
dto.setName(name);
if(dao.checkIdValid(id)){
	succ = dao.join(dto);	
}

out.println("<script>");
out.println("alert('"+ succ ? "회원가입 성공!" : "회원가입 실패" + "');");
out.println("</script>");
response.sendRedirect(succ ? "loginView.jsp" : "joinView.jsp");
%>