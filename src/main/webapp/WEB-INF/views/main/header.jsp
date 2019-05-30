<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.showDetail{
	border: 1px solid black;
	width: 200px;
	height: 400px;
}

input[type=button]{
	border-bottom-style: none;
	background-color: white;
}

#bfLogin, #afLogin{
	text-align: right;	
}

</style>
</head>
<body>

<img src="." id="logo" />
<div id="bfLogin">
<input type="button" value="회원가입" id="joinBtn" />|<input type="button" value="로그인" id="loginBtn"/>
</div>

<div id="afLogin">
<input type="button" value="알림" id="noticBtn" />|<input type="button" value="적립금" id="pointBtn" />
<input type="button" value="마이페이지" id="myPageBnt" />|<input type="button" value="로그아웃" id="logoutBnt" />
</div>

<hr>
<input type="button" value="경매하러가기" id="auctionBtn" />
<input type="button" value="역경매하러가기" id="reverseABtn"/>
<input type="button" value="숙소등록하기" id="addProBtn"/>
<hr>
<div class="showDetail"></div>




</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>




window.onload= function() { 
	$(".showDetail").hide();
}
	/* var chk = "${id}";
	if (chk == null || chk == "") {
		$("#afLogin").hide();
		$("#bfLogin").show();
	}else{
		$("#afLogin").show();
		$("#bfLogin").hide(); */
		
		/* $.ajax({
			type : "get",
			url : "ajaxMessageNotice",
			data : {
				sendId : sendId
			},
			dataType : "html",
			success : function(data) {
				console.log(data);
			},//success
			error : function(err) {
				console.log(err);
			}//error
		}); */
	




$("#joinBtn").click(function() {
	$(".showDetail").show();
	$(".showDetail").html("회원가입");
	//join.jsp	
})


$("#loginBtn").click(function() {
	$(".showDetail").show();
	$(".showDetail").html("로그인");
	//login.jsp	
})


$("#auctionBtn").click(function() {
	location.href="auction";
	//auction.jsp
})


$("#reverseABtn").click(function() {
	location.href="reverseAuction";
	//reverseAuction.jsp
})


$("#addProBtn").mouseenter(function() {	
	$(".showDetail").show();
	var data="";
	data+="<a href='addProperty'>숙소 등록하기</a>"
		+"<br/>호스트가 되어 숙소를 등록해보세요!<br/>"
		+"<a href='infoCenter.jsp'>숙소 호스팅에 관해 알아보기</a>";	
		
	$(".showDetail").html(data);
	
})

$("#addProBtn").mouseleave(function() {	
	$(".showDetail").hide();
})

$("#logoutBtn").click(function() {
	location.href="logout";
	//index.jsp
})

$("#logo").click(function() {
	location.href="index";
	//index.jsp
})




$("#noticBtn").mouseenter(function() {
	$(".showDetail").show();
	$.ajax({
		type : "get",
		url : "ajaxMsgNoticDetail",
		dataType : "html",
		success : function(data) {
			console.log(data);
		},//success
		error : function(err) {
			console.log(err);
		}//error
	});
	
})

$("#noticBtn").mouseleave(function() {
	$(".showDetail").hide();
	
})

$("#pointBtn").mouseenter(function() {
	$(".showDetail").show();
	
})

$("#pointBtn").mouseleave(function() {
	$(".showDetail").hide();	
	
})

	







</script>
</html>