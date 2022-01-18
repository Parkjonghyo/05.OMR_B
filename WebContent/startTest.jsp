<%@page import="com.hanul.study.TesterDTO"%>
<%@page import="com.hanul.study.QuestionDAO"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 인코딩 설정 & 날아온 subjectNo를 받는다.
request.setCharacterEncoding("utf-8");
Integer subNo = (Integer) request.getAttribute("subNo");
TesterDTO dto = (TesterDTO) session.getAttribute("currUserData");

//만약 유저가 로그인되어있지 않다면 login페이지로 가도록
if(dto == null){
	out.println("<script>alert('로그인 후에 이용해주세요')");  
	out.println("location.href='loginView.jsp'</script>");
	// 위의 href 경로는 알아서 맞춰주시길.
}

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