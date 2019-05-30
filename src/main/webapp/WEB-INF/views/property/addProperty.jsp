<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style>
	h3 {
		text-align: center;
	}
	
	span {
		font-size: 11pt;
	}
	
	#addProperty1, #addProperty2 {
		border: 1px solid black;
		width: 50%;
		margin-left: 25%;
	}
	
	input, .amenities, .security, .guestplace {
		font-size: 10pt;
	}
	
	#backfirst {
		text-decoration: none;
		color: black;
		font-size: 12pt;
	}

	#secondmv {
		padding: 10px;
		margin-left: 43%;
		text-decoration: none;
		color: white;
		background-color: red;
		font-size: 11pt;
	}
	
	#propertyEnroll {
		padding: 10px;
		color: white;
		background-color: red;
		font-size: 11pt;
	}
	
	#pimage {
		width: 200px;
		height: 130px;
	}
	
	#pimagediv {
		border: 2px dashed red;
		height: 150px;
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<jsp:include page="../main/header.jsp" />
	</div>

	<h3>숙소 등록을 위해 정보를 입력하세요!</h3>

<form action="../propertyEnroll" method="post" enctype="multipart/fome-data">
	<div id="addProperty1">
		<h4> 숙소 종류 (필수) </h4>
		<span> 등록하실 숙소 종류는 무엇인가요? </span>
		<select id="propertykind" name="propertykind">
						<option value="one"> 1인실 </option>
						<option value="many"> 다인실 </option>
						<option value="all"> 집 전체 </option>
		</select> <br> <br>
		
		<h4> 최대 숙박 인원 (필수) </h4>
		<span> 숙소에 얼마나 많은 인원이 숙박할 수 있나요? </span>
		<select id="possiblenum" name="possiblenum">
						<option value="1"> 1 </option>
						<option value="2"> 2 </option>
						<option value="3"> 3 </option>
						<option value="4"> 4 </option>
						<option value="5명 이상"> 5명 이상 </option>
		</select> <br>
		<span> 게스트가 사용할 수 있는 침실은 몇 개 인가요? </span> 
		<select id="roomnum" name="roomnum">
						<option value="1"> 1 </option>
						<option value="2"> 2 </option>
						<option value="3"> 3 </option>
						<option value="4"> 4 </option>
						<option value="5"> 5개 이상 </option>
		</select> <br>
		<span> 게스트가 사용할 수 있는 침대는 몇 개 인가요? </span> 
		<select id="bednum" name="bednum">
						<option value="1"> 1 </option>
						<option value="2"> 2 </option>
						<option value="3"> 3 </option>
						<option value="4"> 4 </option>
						<option value="5개 이상"> 5개 이상 </option>
		</select> <br> <br>
		
		<h4> 욕실 수 (필수) </h4>
		<span> 욕실 </span> 
		<select id="toiletnum" name="toiletnum">
						<option value="1"> 1 </option>
						<option value="2"> 2 </option>
						<option value="3"> 3 </option>
						<option value="4"> 4 </option>
						<option value="5개 이상"> 5개 이상 </option>
		</select> <br> <br>
		
		<h4> 숙소 위치 (필수) </h4>
		<span> 정확한 숙소 주소는 게스트가 예약을 완료한 후에만 공개됩니다. </span> <br> <br>
		<div class="form-group">
			<input class="form-control" style="width: 10%; display: inline;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly">
    		<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"> </i> 우편번호 찾기</button>                               
		</div>
		<div class="form-group">
  		  	<input class="form-control" style="width: 50%; top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly" />
		</div>
		<div class="form-group">
			<input class="form-control" style="width: 50%;" placeholder="상세주소" name="addr3" id="addr3" type="text">
		</div> <br>
		
		
		<h4> 편의시설 </h4>
		<span> 일반적으로 게스트가 기대하는 편의시설 목록입니다.</span> <br> <br>
		<input type="checkbox" name="amenity" class="amenities" value="필수 품목 (수건, 침대시트, 비누, 화장지, 베개)"> 필수품목 (수건, 침대시트, 비누, 화장지, 베개)　　
		<input type="checkbox" name="wifi" class="amenities" value="무선인터넷">  무선인터넷　　
		<input type="checkbox" name="hair" class="amenities" value="샴푸, 컨디셔너"> 샴푸, 컨디셔너　　
		<input type="checkbox" name="closet" class="amenities" value="옷장"> 옷장　　
		<input type="checkbox" name="tv" class="amenities" value="TV"> TV <br>
		<input type="checkbox" name="heat" class="amenities" value="난방"> 난방　　
		<input type="checkbox" name="aircon" class="amenities" value="에어컨"> 에어컨　　
		<input type="checkbox" name="breakfast" class="amenities" value="조식, 커피, 차"> 조식, 커피, 차　　
		<input type="checkbox" name="desk" class="amenities" value="업무 가능 공간 (책상)"> 업무 가능 공간 (책상)　　
		<input type="checkbox" name="fireplace" class="amenities" value="벽난로"> 벽난로　　
		<input type="checkbox" name="hairdryer" class="amenities" value="헤어드라이어"> 헤어드라이어 <br> <br>
		
		<h4> 안전시설</h4>
		<input type="checkbox" name="firedet" class="security" value="화재 감지기"> 화재감지기　　
		<input type="checkbox" name="codet" class="security" value="일산화탄소 감지기"> 일산화탄소 감지기　　
		<input type="checkbox" name="fakit" class="security" value="구급상자"> 구급상자　　
		<input type="checkbox" name="fireex" class="security" value="소화기"> 소화기　　
		<input type="checkbox" name="doorlock" class="security" value="침실문 잠금장치"> 침실문 잠금장치 <br> <br>
		
		<h4> 게스트 사용 공간 </h4>
		<span> 등록하고자 하는 숙소에서 게스트가 이용 가능한 공용 공간을 선택하세요. </span> <br> <br>
		<input type="checkbox" name="fool" class="guestplace" value="수영장"> 수영장　　
		<input type="checkbox" name="kitchen" class="guestplace" value="주방"> 주방　　
		<input type="checkbox" name="laundry" class="guestplace" value="세탁 공간 - 세탁기"> 세탁 공간 - 세탁기　　
		<input type="checkbox" name="dryer" class="guestplace" value="세탁공간 - 건조기"> 세탁공간 - 건조기　　
		<input type="checkbox" name="parking" class="guestplace" value="주차"> 주차 <br> <br>
		
		<a href="#" id="secondmv"> 2단계로 이동 </a>
	</div>
	
	<div id="addProperty2">
		<h4> 숙소 사진 올리기 (필수) </h4>
		<span> 게스트가 사진을 보고 숙소의 느낌을 생생히 떠올려볼 수 있도록 해주세요. </span> <input type="file" id="pfile" name="pfile" multiple> <br>
		<div id="pimagediv"> </div>
	
		<h4> 숙소 설명 </h4>
		<span> 숙소에 대해 간략히 설명해주세요. 숙소와 주변 지역에 대한 정보에서 시작해 게스트와 어떻게 소통하고 싶은지 등의 내용을 적어주세요. </span> <br> <br>
		<textarea name="pcontents" rows="10" cols="60" placeholder="인테리어, 채광, 주변 정보 등을 설명하세요."> </textarea> <br>
		
		<h4> 이름 지정 (필수) </h4>
		<span> 숙소의 특징과 장점을 강조하는 제목을 정해 게스트의 관심을 끌어보세요. </span> <br> <br>
		<input type="text" id="pname" name="pname"> <br>
		
		<h4> 숙소 이용 규칙 (필수) </h4>
		<span> 체크인 가능시간: </span> <select id="checkintime" name="checkintime">
										<option value="1"> 1 </option>
										<option value="2"> 2 </option>
										<option value="3"> 3 </option>
										<option value="4"> 4 </option>
										<option value="5"> 5 </option>
										<option value="6"> 6 </option>
										<option value="7"> 7 </option>
										<option value="8"> 8 </option>
										<option value="9"> 9 </option>
										<option value="10"> 10 </option>
										<option value="11"> 11 </option>
										<option value="12"> 12 </option>
										<option value="13"> 13 </option>
										<option value="14"> 14 </option>
										<option value="15"> 15 </option>
										<option value="16"> 16 </option>
										<option value="17"> 17 </option>
										<option value="18"> 18 </option>
										<option value="19"> 19 </option>
										<option value="20"> 20 </option>
										<option value="21"> 21 </option>
										<option value="22"> 22 </option>
										<option value="23"> 23 </option>
										<option value="24"> 24 </option>
									</select> <span> 시 이후 </span> <br>
		<span> 체크아웃 시간: </span> <select id="checkouttime" name="checkouttime">
										<option value="1"> 1 </option>
										<option value="2"> 2 </option>
										<option value="3"> 3 </option>
										<option value="4"> 4 </option>
										<option value="5"> 5 </option>
										<option value="6"> 6 </option>
										<option value="7"> 7 </option>
										<option value="8"> 8 </option>
										<option value="9"> 9 </option>
										<option value="10"> 10 </option>
										<option value="11"> 11 </option>
										<option value="12"> 12 </option>
										<option value="13"> 13 </option>
										<option value="14"> 14 </option>
										<option value="15"> 15 </option>
										<option value="16"> 16 </option>
										<option value="17"> 17 </option>
										<option value="18"> 18 </option>
										<option value="19"> 19 </option>
										<option value="20"> 20 </option>
										<option value="21"> 21 </option>
										<option value="22"> 22 </option>
										<option value="23"> 23 </option>
										<option value="24"> 24 </option>
								</select> <span> 시 </span> <br>
		<h4> 숙소 요금 설정 (필수) </h4>
		<span> 기본 요금: </span> <input type="number" id="pprice" name="pprice"> <span> 원 </span> <br> <br>
		
		<a href="#" id="backfirst"> ◀ 이전 단계로 돌아가기 </a> <br> <br>
		<button id="propertyEnroll"> 숙소 등록 신청 </button>
	</div>
</form>
</body>
<script>
$("#addProperty1").show();
$("#addProperty2").hide();

if ($(""))

$("#secondmv").click(function() {
	$("#addProperty1").hide();
	$("#addProperty2").show();
})

$("#backfirst").click(function() {
	$("#addProperty1").show();
	$("#addProperty2").hide();
})

function execPostCode() {
         new daum.Postcode({
             oncomplete: function(data) {

                var fullRoadAddr = data.roadAddress;
                var extraRoadAddr = '';
 
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }

                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }

                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                console.log(data.zonecode);
                console.log(fullRoadAddr);
                
               
                $("[name=addr1]").val(data.zonecode);
                $("[name=addr2]").val(fullRoadAddr);
                
            }
         }).open();
     }

var sel_files = [];

$(document).ready(function() {
	$("#pfile").on("change", handleImgsFileSelect);
});

function handleImgsFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);
	
	filesArr.forEach(function(f) {
		if (!f.type.match("image.*")) {
			alert ("확장자는 이미지 확장자만 가능합니다.");
			return;
		}
		
		sel_files.push(f);
		
		var reader = new FileReader();
		reader.onload = function(e) {
			var img_html = "<img id='pimage' src=\""+e.target.result+"\" />";
			$("#pimagediv").append(img_html);
		}
		reader.readAsDataURL(f);
	});
}
</script>
</html>