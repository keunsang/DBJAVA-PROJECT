package com.zip.dbjava.property.bean;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("property")
@Data
public class Property {
	String p_code;
	String p_mid;
	String p_type;
	int p_maxguest;
	int p_bedroom;
	int p_bed;
	int p_bathroom;
	String p_location;
	String p_convenient;
	String p_safety;
	String p_usespace;
	String p_description;
	String p_name;
	String p_checkin;
	String p_checkout;
	int p_price;
	int p_register;
	int p_report;
}
