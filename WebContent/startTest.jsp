<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
Integer subNo = (Integer) request.getAttribute("subNo");

QuestionDAO dao = new QuestionDAO();
ArrayList<QuestionDTO> questions = dao.selectAllQuestion(subNo);

request.setAttribute("questions", questions);
RequestDispatcher rd = request.getRequestDispatcher("testView.jsp");
rd.forward(request, response);

%>