<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body style="text-align: center; display: flex; align-items: center; justify-content: center;">
	<form action="Question4_Main.jsp" method="post" style="width: 30%;">
		<fieldset style="border-style: dotted; border-color: blue;">
			<legend>
				<h1>도서관리프로그램</h1>
			</legend>
			<input type="text" name="ID" placeholder="아이디">
			<br>
			<input type="password" name="PW" placeholder="비밀번호">
			<br>
			<input type="submit" value="로그인">
			<br> 아이디가 없다면
			<a href="Question4_Join.jsp">회원가입</a>
			이동
		</fieldset>
	</form>
</body>
</html>