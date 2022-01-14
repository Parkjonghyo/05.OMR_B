<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String a1 = request.getParameter("chose0_omr");
String a2 = request.getParameter("chose1_omr");
String a3 = request.getParameter("chose2_omr");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><%=a1 %></h3><br>
<h3><%=a2 %></h3><br>
<h3><%=a3 %></h3><br>
</body>
</html>