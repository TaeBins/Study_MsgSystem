<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center; display: flex; align-items: center; justify-content: center;">
	<div style="width: 50%;">
		<fieldset style="border-style: dotted; border-color: blue;">
		<legend>
				<h1><b>님 환영합니다!</b></h1>
			</legend>
			<table>
				<tr>
					<!-- 어드민 접속시 -->
					<td>
						<button type="button" onclick="location.href='#'" style="width: 100px; height: 100px;">회원관리</button>
						<button type="button" onclick="location.href='#'" style="width: 100px; height: 100px;">도서관리</button>
						<button type="button" onclick="location.href='#'" style="width: 100px; height: 100px;">대여관리</button>
						<button type="button" onclick="location.href='#'" style="width: 100px; height: 100px;">재고관리</button>
					</td>

					<!-- 회원접속시 -->
					<!-- <td>
						<button type="button" onclick="location.href='#'">도서검색</button>
						<button type="button" onclick="location.href='#'">나의책방</button>
						<button type="button" onclick="location.href='#'">즐겨찾기</button>
						<button type="button" onclick="location.href='#'">회원정보</button>
					</td> -->
				</tr>
			</table>
	</div>
</body>
</html>