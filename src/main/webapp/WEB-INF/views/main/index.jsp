<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</head>

<body>
	<div>
		<div>
			<h1 tabindex="-1" class="base">숙소를 예약 하세요</h1>
		</div>
		<div>
			<div>
				<span class="base_s">목적지</span>
			</div>
			<div>
				<input type="text" id="destination_input" class="d_input" value="">
			</div>
		</div>
		<div>
			<div>
				<span class="base_s">체크인-체크아웃</span>
			</div>
			<div>
				<input type="text" id="checkin_input" class="c_input" value="" readonly="readonly">-
				<input type="text" id="checkout_input" class="c_input" value="" readonly="readonly">
			</div>
		</div>
		<div>
			<div>
				<span class="base_s">인원</span>
			</div>
			<div>
				<input type="text" id="person_input" class="p_input" value="" readonly="readonly">
			</div>
		</div>
	</div>




</body>

<script type="text/javascript">
	$(function() {
		$(".check_input").datepicker({
/* 	         changeMonth: true, 
	         changeYear: true,
	         nextText: '다음 달',
	         prevText: '이전 달'  */
		});
		
		var availableCity = [ "서울", "부산", "대구", "광주", "울산", "인천", "충청남도",
				"충청북도", "경상남도", "경상북도" ];
		$("#destination_input").autocomplete({
			source : availableCity,
			select : function(event, ui) {
				console.log(ui.item);
			},
			focus : function(event, ui) {
				return false;
				//event.preventDefault();
			}
		});
	});
</script>
</html>