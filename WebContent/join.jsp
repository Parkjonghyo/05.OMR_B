<%@page import="com.hanul.study.MemberDAO"%>
<%@page import="com.hanul.study.TesterDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 인코딩 설정 후 매개변수들 받아옴.
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String name = request.getParameter("name");

MemberDAO dao = new MemberDAO();
TesterDTO dto = new TesterDTO();

// 성공여부 변수 리셋.
boolean succ = false;

// dto 초기화중
dto.setId(id);
dto.setPw(pw);
dto.setName(name);

// id중복검사를 한 후 Tester_B에 dto를 넣어본다.
if(dao.checkIdValid(id)){
	succ = dao.join(dto);	
}

out.println("<script>");
out.println("window.onload = () => {");
out.println("alert('"+ (succ ? "회원가입 성공!" : "회원가입 실패") + "');"); // 성공, 실패를 alert창으로 보여줌
out.println("window.location.href = '" + (succ ? "loginView.jsp" : "joinView.jsp") + "'"); // 성공 시 로그인 페이지로 회원가입 페이지로 보냄
out.println("}");
out.println("</script>");

%>