<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
	<div>
		<div>
			<h1 tabindex="-1" class="base">숙소를 예약 하세요</h1>
		</div>
		<form action="mainSearch" name="mainSearch" method="get">
			<input type="text" name="m_id" placeholder="아이디"> <input
				type="password" name="m_pw" placeholder="비밀번호"><br />
			<button>로그인</button>
			<a href="joinFrm">회원가입</a>
		</form>
	</div>
</body>
</html>