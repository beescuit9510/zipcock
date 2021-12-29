package kr.or.delivery.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZcdEvent {
	private int eventNo;
	private int couponNo;
	private int memberNo;
	private String eventName;
	private String eventContent;
}
