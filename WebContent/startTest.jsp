<%@page import="com.hanul.study.QuestionDAO"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 인코딩 설정 & 날아온 subjectNo를 받는다.
request.setCharacterEncoding("utf-8");
Integer subNo = (Integer) request.getAttribute("subNo");

// 문제 dao에서 해당하는 과목의 모든 문제를 받아온다.
QuestionDAO dao = new QuestionDAO();
ArrayList<TestDTO> tests = dao.selectAll(subNo);

// 테스트 코드(받아온 모든 문제를 출력)
/* for(TestDTO dto : tests){
	System.out.println(dto.getQuestion());
} */

// 세션으로 scope 설정.
session.setAttribute("tests", tests);
RequestDispatcher rd = request.getRequestDispatcher("testView.jsp");
rd.forward(request, response);

%>