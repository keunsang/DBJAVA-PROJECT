package com.zip.dbjava.property.bean;

import lombok.Data;

@Data
public class AuctionRegist {
String au_code; //경매등록코드
String au_pcode;//숙소코드
String au_starttime;
String au_period;
int au_min;
}
