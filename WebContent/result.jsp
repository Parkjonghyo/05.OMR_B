<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
ArrayList<String> answers = new ArrayList<>();
ArrayList<TestDTO> tests = (ArrayList<TestDTO>) session.getAttribute("tests");

String tempVal = "";

// 날아온 정답들 전부 받아낸다!!!!
for(int i = 0; i < tests.size(); i++) {
	tempVal = request.getParameter("chose"+i+"_omr");
	answers.add(tempVal == null ? "미풀이" : tempVal);
}

// 테스트 코드(받은 정답 & 테스트의 정답)
/* for(String a : answers){
	System.out.println("a: " + a);
} */

/* for(TestDTO b : tests){
	System.out.println("b: " + b.getAnswer());
} */



// 비지니스로직 : 비교하는 것.
ArrayList<Boolean> isCorrect = new ArrayList<>();


for(int i = 0;i<tests.size(); i++){
	isCorrect.add(answers.get(i).equals(tests.get(i).getAnswer()));
}

request.setAttribute("isCorrList", isCorrect);
request.setAttribute("answers", answers);
RequestDispatcher rd = request.getRequestDispatcher("resultView.jsp");
rd.forward(request, response);

%>