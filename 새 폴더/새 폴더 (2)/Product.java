package kr.or.table.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private int productNo;
	private int memberNo;
	private String productName;
	private String productDetail;
	private int stock;
	private String howToUse;
	private String precautions;
	private String expirationDate;
	private String capacity;
	private String origin;//country of origin 
	private String matufacturer;
	private String manufactureDate;
	private String managerContact;
	private String ccContact; //consumer Counseling Contact
	private String consumerCounselingContact;
	private int boardCategory;
}
