<%@page import="java.util.ArrayList"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	TestDTO dto = new TestDTO();
	ArrayList<TestDTO> list = new ArrayList<>();
	list.add(new TestDTO("1", "문제1", "4", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("2", "문제2", "3", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("3", "문제3", "4", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("4", "문제4", "2", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("5", "문제5", "1", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("6", "문제6", "3", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("7", "문제7", "3", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("8", "문제8", "2", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("9", "문제9", "4", 1, "보기1", "보기2", "보기3", "보기4"));
	list.add(new TestDTO("10", "문제10", "1", 1, "보기1", "보기2", "보기3", "보기4"));
	
	String[] radioName = new String[list.size()];
	for(int i=0; i<list.size(); i++){
		radioName[i] = "chose"+i;
	}
	
	String[] OmrName = new String[list.size()];
	for(int i=0; i<list.size(); i++){
		OmrName[i] = "pick"+i;
	}
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>test omr</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/test_ysm.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div id="header">
		<h3>시험</h3>
	</div>
	<form action="result.jsp" method="post" onsubmit="return fnSubmit()">
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
			<table border="1">
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
		<div id="footer">
			<div id="timer"></div>
			<button type="submit">제출</button>
		</div>
	</form>
	<script>
		/* for(var i=1; i<=4; i++){
			$("input:radio[name='chose0']:radio[value=i]").click(function(){
				$("input:radio[name='pick0']:radio[value=i]").prop("checked", true);
			})
		} */
		$("input:radio[name='chose0']:radio[value='1']").click(function(){
			$("input:radio[name='pick0']:radio[value='1']").prop("checked", true);
		})
		$("input:radio[name='chose0']:radio[value='2']").click(function(){
			$("input:radio[name='pick0']:radio[value='2']").prop("checked", true);
		})
		$("input:radio[name='chose0']:radio[value='3']").click(function(){
			$("input:radio[name='pick0']:radio[value='3']").prop("checked", true);
		})
		$("input:radio[name='chose0']:radio[value='4']").click(function(){
			$("input:radio[name='pick0']:radio[value='4']").prop("checked", true);
		})
		
		function fnSubmit() {
			if (confirm("답안을 제출하시겠습니까?")) {
				return true;
			}
			return false;
		}
		
		var SetTime = 3600;
		function last_time() {
			var msg = Math.floor(SetTime / 60) + "분" + (SetTime % 60) + "초";
			document.all.timer.innerHTML = msg;
			SetTime--;
			if (SetTime < 0) {
				clearInterval(tid);
				alert("종료");
			}
		}
		window.onload = function TimerStart() {
			tid = setInterval('last_time()', 1000)
		};
	</script>
</body>
</html>