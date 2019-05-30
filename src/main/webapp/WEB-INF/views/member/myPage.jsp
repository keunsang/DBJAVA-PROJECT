<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<style>
#menuList{
position: absolute;
top:150px;

}
.hrs{
align:left;
width: 100px;
}
#line{
border-left: 1px solid black;
height: 400px;
position: absolute;
left: 120px;
top: 130px;

}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="menuList">

<span id="profileModify">프로필 수정</span>
<hr style="width: 100px" class="hrs" align="left">

<span id="messageMain">메시지</span><br>
<hr style="width: 100px" class="hrs" align="left">

<span id="myAuction">진행 중인 경매</span><br>
<hr style="width: 100px" class="hrs" align="left">

<span id="manageAuction">경매 관리</span><br>
<hr class="hrs" align="left">

<span id="manageProperty">숙소 관리</span><br>
<hr class="hrs" align="left">

<span id="myReservation">숙소 이용 내역</span><br>
<hr class="hrs" align="left">

<span id="saveProperty">찜 목록</span><br>
<hr class="hrs" align="left">

<span id="myPoint">적립 내역</span><br>
<hr class="hrs" align="left">

<span id="questionList">문의 내역</span><br>
<hr class="hrs" align="left">

</div><div id="line"></div> <!-- 사이즈,포지션 조절해야함 -->

</body>
<script>
$("#profileModify").click(function(){
	location.href="profileModify";
});

$("#messageMain").click(function(){
	location.href="messageMain";
});

$("#myAuction").click(function(){
	location.href="myAuction";
});

$("#manageAuction").click(function(){
	location.href="manageAuction";
});

$("#manageProperty").click(function(){
	location.href="manageProperty";
});

$("#myReservation").click(function(){
	location.href="myReservation";
});

$("#saveProperty").click(function(){
	location.href="saveProperty";
});

$("#myPoint").click(function(){
	location.href="myPoint";
});

$("#questionList").click(function(){
	location.href="questionList";
});


</script>
</html>