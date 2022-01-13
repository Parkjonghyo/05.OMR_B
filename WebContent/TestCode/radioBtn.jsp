<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<meta charset="UTF-8">
<style type="text/css">
input[type=radio] {
	width: 100px;
}
</style>
<title>테스트</title>
</head>
<body>
	<input type="radio" name="chk_info" value="1">HTML
	<input type="radio" name="chk_info" value="2">CSS
	<input type="radio" name="chk_info" value="3">웹디자인
	<input type="radio" name="chk_info" value="4">웹디자인
<br /><br />
	<input type="radio" name="chk_info_omr" value="1">
	<input type="radio" name="chk_info_omr" value="2">
	<input type="radio" name="chk_info_omr" value="3">
	<input type="radio" name="chk_info_omr" value="4">
</body>
<script type="text/javascript">
	
	$().ready(() => {
		
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
		
		/* $('input[name="chk_info"]').change(function() {
			console.log($('input[name="chk_info"]:checked').val())
			var yeah = $('input[name="chk_info"]:checked').val()
			$('input[name="chk_info_omr"]').val([yeah])
		}) */
		
		/* $('input[name="chk_info_omr"]').change(function() {			
			console.log($('input[name="chk_info_omr"]:checked').val())
			var yeah = $('input[name="chk_info_omr"]:checked').val()
			$('input[name="chk_info"]').val([yeah])
		}) */
	})
</script>
</html>