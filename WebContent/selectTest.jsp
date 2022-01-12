<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
request.setCharacterEncoding("utf-8");
int subNo = Integer.parseInt(request.getParameter("subNo"));

request.setAttribute("subNo", subNo);
RequestDispatcher rd = request.getRequestDispatcher("startTest.jsp");
rd.forward(request, response);
%>