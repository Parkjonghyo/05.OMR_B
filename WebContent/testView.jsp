<%@page import="com.hanul.study.QuestionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.hanul.study.TestDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	QuestionDAO dao = new QuestionDAO();
	TestDTO dto = new TestDTO();
	ArrayList<TestDTO> list = (ArrayList<TestDTO>) session.getAttribute("tests");
	
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
	<form action="result.jsp" method="post" onsubmit="return fnSubmit()" name="sheet">
	<div id="header">
		<h3>[
		<%if(list.get(0).getSubno()==1){ %>
			고양이
		<%}else{ %>
			강아지
		<%} %>
		]</h3>
		<div id="timer"></div>
		<div class="subBtn">
			<input type="submit" value="제출" class="inputBtn">
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
	</div>
	<script>
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
				document.sheet.submit();
			}
		}
		window.onload = function TimerStart() {
			tid = setInterval('last_time()', 1000)
		};
	</script>
</body>
</html>