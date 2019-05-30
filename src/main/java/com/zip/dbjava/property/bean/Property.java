package com.zip.dbjava.property.bean;

import lombok.Data;

@Data
public class Property {
	String p_code;//숙소코드
	String p_mid;//아이디
	String p_type;//숙소종류
	int p_maxguest;//최대 숙박 인원
	int p_bedroom;//침실개수
	int p_bed;//침대개수
	int p_bathroom;//욕실수
	String p_location;//숙소위치
	String p_convenient;//편의시설
	String p_safety;//안전시설
	String p_usespace;//게스트 사용공간
	String p_description;//숙소설명
	String p_name;//숙소이름
	String p_checkin;//체크인
	String p_checkout;//체크아웃
	int p_price;//숙소요금
	int p_register;//등록여부
	int p_report;//경고횟수
}
