package kr.or.zipcoock.board.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductCard {
	private int productNo;
	private int memberNo;
	private String productName;
	private String price;
	private int categoryNo;
	private String tradeName;
	private String filepath;
	private String reviewCount;
	private int starAvg;
	private String dRate;
	private String discountedPrice;
	private String orderPrice;
	private String starClass;

	public String getPrice() {
		return price != null ? price.trim() : price;
	}

	public String getDiscountedPrice() {
		return discountedPrice != null ? discountedPrice.trim() : discountedPrice;
	}

	public String getOrderPrice() {
		return orderPrice != null ? orderPrice.trim() : orderPrice;
	}
	
	public String getStarClass() {
		return starClass != null ? starClass.trim() : starClass;
	}

//	public double getStarAvg() {
//		return Math.ceil(starAvg *2 ) / 2;
//		}
	
}
