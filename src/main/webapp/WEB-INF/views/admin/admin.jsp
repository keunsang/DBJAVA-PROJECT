<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	position: absolute;
	width: 500px;
	height: 500px;
	left: 50%;
	top: 50%;
	margin-left: -250px;
	margin-top: -250px;
	border: #000 solid 1px;
	background: #ABF200;
}
</style>
</head>
<body>
	<div id="adminlogindiv">
		<h1>로고이미지@@@@@@@@@</h1>
		<form action="adlogin" method="post">
			<input type="text" name="a_id" placeholder="아이디 입력" /><br /> <input
				type="password" name="a_pw" placeholder="비밀번호 임력" /><br />
			<button id="adminlogin">로그인</button>
		</form>
	</div>
</body>
</html>