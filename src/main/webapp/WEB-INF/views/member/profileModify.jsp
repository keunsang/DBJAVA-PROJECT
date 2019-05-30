<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#profile {
	position: absolute;
	left: 150px;
	top: 170px;
}

#picture {
	border: 1px solid black;
	width: 120px;
	height: 150px;
}

.text{
width:300px;
}
</style>
</head>
<body>
	<h1>profileModify</h1>
	<jsp:include page="myPage.jsp" />
<form id="profileInfo" name="profileInfo" action="profileUpdate" method="post" >
	<div id="profile">
		<input type="file" id="picture" />
		<br><br>
		카드 회사 <select name="card" size="1"
			style="width: 70px; height: 27px;">
			<option value="NH">농협</option>
			<option value="KB">국민</option>
			<option value="SH">신한</option>
			<option value="HN">하나</option>
			<option value="HD">현대</option>
		</select>
		<br>
		카드 번호 <input type="text" id="cardNumber" class="text">
		<br>
		이름 <input type="text" id="name" class="text">
		<br>
		성별   남<input type="radio" name="sex" value="man"> 여 <input type="radio" name="sex" value="woman">
		<br>
		생년월일 <input type="text" id="name" class="text">
		<br>
		이메일 주소 <input type="text" id="name" class="text">
		<br>
		전화번호 <input type="text" id="name" class="text">
		<br>
		거주지 <input type="text" id="name" class="text">
		<br><br>
		자기소개 <textarea rows="20" cols="50"></textarea>
		

	</div>

</form>
</body>
<script>
	console.log($("#picture"));
	console.dir($("#picture"));
</script>
</html>