package kr.or.delivery.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ZcdReview {
	private int reviewNo;
	private int orderNo;
	private int menuNo;
	private int memberNo;
	private String reviewContent;
	private String reviewPhotoname;
	private String reviewPhotopath;
	private String reviewStar;
	private String reviewRecommend;
	private String reviewReport;
	private String riderRecommend;
}
