package com.zip.dbjava.property.bean;

import lombok.Data;

@Data
public class AuctionProgress {
String aup_code;   //경매진행코드
String aup_aucode; //경매등록코드
String aup_mid;     //아이디
int aup_price;     //입찰가
int aup_complete; //경매 확정 여부
}
