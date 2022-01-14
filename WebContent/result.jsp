<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
ArrayList<String> answers = new ArrayList<>();
ArrayList<TestDTO> tests = (ArrayList<TestDTO>) session.getAttribute("tests");

// 날아온 정답들 전부 받아낸다!!!!
for(int i = 0; i < tests.size(); i++) {
	answers.add(request.getParameter("chose" + i + "_omr"));
}

for(String a : answers){
	System.out.println("a: " + a);
}

for(TestDTO b : tests){
	System.out.println("b: " + b.getAnswer());
}

// 비지니스로직 : 비교하는 것.
boolean[] isCorrect = new boolean[10];

for(int i = 0;i<tests.size(); i++){
	isCorrect[i] = answers.get(i).equals(tests.get(i).getAnswer());
	System.out.println(isCorrect[i]);
}

%>