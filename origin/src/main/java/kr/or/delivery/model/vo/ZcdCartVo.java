package kr.or.delivery.model.vo;

import lombok.Data;

@Data
public class ZcdCartVo {

	private int cartNo;
	private int memberNo;
	private String storeName;
	private int menuNo;
	private String menuName;
	private int menuAllprice;
	private int amount;
	private String addmenuInfo1;
	private String addmenuInfo2;
	
}