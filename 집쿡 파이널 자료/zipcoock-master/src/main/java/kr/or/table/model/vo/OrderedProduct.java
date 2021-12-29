package kr.or.table.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderedProduct 
{
	private int orderedProductNo;
	private int productNo;
	private int paymentInfoCode;
	private int quantity;
}
