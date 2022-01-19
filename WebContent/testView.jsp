<%@page import="com.hanul.study.TesterDTO"%>
<%@page import="com.hanul.study.QuestionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
	QuestionDAO dao = new QuestionDAO();
	TestDTO dto = new TestDTO();
	ArrayList<TestDTO> list = (ArrayList<TestDTO>) session.getAttribute("tests");
	TesterDTO userDto = (TesterDTO) session.getAttribute("currUserData");
	
	String[] radioName = new String[list.size()];
	for(int i=0; i<list.size(); i++){
		radioName[i] = "chose"+i;
	}
	
	String[] OmrName = new String[list.size()];
	for(int i=0; i<list.size(); i++){
		OmrName[i] = "chose"+i+"_omr";
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>test omr</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/testView.css">
<link rel="icon" href="images/Bicon.ico" type="image/x-icon" sizes="16x16">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<form action="result.jsp" method="post" onsubmit="return fnSubmit()" onreset="return fnReset()" name="sheet">
	<div id="header">
		<h3>[
		<%if(list.get(0).getSubno()==1){ %>
			강아지
		<%}else{ %>
			고양이
		<%} %>
		]</h3> 
		<div id="timer"></div>
		<h4 class="username">수험자:<%=userDto.getName() %></h4>
		<div class="subBtn">
			<input type="submit" value="제출" class="inputBtn">
			<br>
			<input type="reset" value="초기화" class="inputBtn">
		</div>
	</div>
	<div id="main">
			<div id="mainLeft">
				<%for (int i = 0; i < list.size(); i += 2) {%>
					<%=i + 1%>. &nbsp;<%=list.get(i).getQuestion()%><br>
					<label><input type="radio" name="<%=radioName[i] %>" value="1">1. <%=list.get(i).getView1()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="2">2. <%=list.get(i).getView2()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="3">3. <%=list.get(i).getView3()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="4">4. <%=list.get(i).getView4()%></label>
					<br><br><br>
				<%}%>
			</div>
			<div id="mainRight">
				<%for (int i = 1; i < list.size(); i += 2) {%>
					<%=i + 1%>. &nbsp;<%=list.get(i).getQuestion()%><br>
					<label><input type="radio" name="<%=radioName[i] %>" value="1">1. <%=list.get(i).getView1()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="2">2. <%=list.get(i).getView2()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="3">3. <%=list.get(i).getView3()%></label>
					<label><input type="radio" name="<%=radioName[i] %>" value="4">4. <%=list.get(i).getView4()%></label>
					<br><br><br>
				<%}%>
			</div>
	</div>
	<div id="section">
		<table>
			<tr>
				<td></td>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<%for (int i = 0; i < list.size(); i++) {%>
			<tr>
				<th><%=i + 1%></th>
				<td><input type="radio" name="<%=OmrName[i]%>" value="1"></td>
				<td><input type="radio" name="<%=OmrName[i]%>" value="2"></td>
				<td><input type="radio" name="<%=OmrName[i]%>" value="3"></td>
				<td><input type="radio" name="<%=OmrName[i]%>" value="4"></td>
			</tr>
			<%}%>
		</table>
		
	</div>
	</form>
	<div id="footer">
		<div class="banner">
			<div class="gra"></div>
			<img src="images/banner.jpg" width="1000px" height="200px">
			<span class="text">OMR_B조 입니다.</span>
		</div>
	</div>
	<script>
	
	$(document).ready(function(){
		<%
		//만약 유저가 로그인되어있지 않다면 login페이지로 가도록
		if(userDto == null){
			out.println("alert('로그인 후에 이용해주세요')");  
			out.println("location.href='loginView.jsp'");
			// 위의 href 경로는 알아서 맞춰주시길.
		}else {
			out.println("alert('시험을 시작합니다.')");  
		}
		%>
	})
	
		$().ready(function() {
			$('input[type="radio"]').change(function() {
				var name = $(this).attr('name'); 
				if(name.indexOf('omr') === -1){
					var value = $('input[name="' + name + '"]:checked').val();
					console.log(value);
					$('input[name="' + name + '_omr"]').val([value]);
				} else {
					var value = $('input[name="' + name + '"]:checked').val();
					console.log(value);
					var delOmrName = name.split("_omr")[0];
					console.log(delOmrName);
					$('input[name="' + delOmrName + '"]').val([value]);
				}
			})
		})
		
		function noRefresh() 
		{
			if(event.keyCode == 116) {
				alert("새로고침 할 수 없습니다");
				return false;
			}else if(event.keyCode == 8) {
				alert("뒤로가기를 할 수 없습니다.");
				return false;
			}
		}
		document.onkeydown = noRefresh;
		
		function fnSubmit() {
			if (confirm("답안을 제출하시겠습니까?")) {
				return true;
			}
			return false;
		}
		
		function fnReset() {
			if(confirm("답안을 초기화 하시겠습니까?\n입력값이 사라집니다.")) {
				return true;
			}else {
				alert("취소되었습니다.");
				return false;
			}
		}
		
		var SetTime = 3600;
		function last_time() {
			var msg = Math.floor(SetTime / 60) + "분" + (SetTime % 60) + "초";
			document.all.timer.innerHTML = msg;
			SetTime--;
			if (SetTime < 0) {
				clearInterval(tid);
				alert("종료");
				document.sheet.submit();
			}
		}
		window.onload = function TimerStart() {
			tid = setInterval('last_time()', 1000)
		};
		
	</script>
</body>
</html>