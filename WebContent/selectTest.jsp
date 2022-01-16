<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// 인코딩, 고양이 or 강아지인지를 받아온다.
request.setCharacterEncoding("utf-8");
int subNo = Integer.parseInt(request.getParameter("subNo"));

// request로 scope 설정 후 startTest.jsp로 넘긴다.
request.setAttribute("subNo", subNo);
RequestDispatcher rd = request.getRequestDispatcher("startTest.jsp");
rd.forward(request, response);
%>