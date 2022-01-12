<%@page import="com.hanul.study.QuestionDAO"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
Integer subNo = (Integer) request.getAttribute("subNo");

QuestionDAO dao = new QuestionDAO();
ArrayList<TestDTO> tests = dao.selectAll(subNo);

request.setAttribute("tests", tests);
RequestDispatcher rd = request.getRequestDispatcher("testView.jsp");
rd.forward(request, response);

%>