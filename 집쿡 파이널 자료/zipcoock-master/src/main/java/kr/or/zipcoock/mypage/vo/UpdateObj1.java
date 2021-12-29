package kr.or.zipcoock.mypage.vo;



import kr.or.table.model.vo.Address;
import kr.or.table.model.vo.HomepageQna;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.ProductLike;
import kr.or.table.model.vo.ProductReview;
import kr.or.table.model.vo.Qna;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UpdateObj1 {
	private Member m;
	private Member pwM;
	private Address addr;
	private Qna q;
	private HomepageQna hq;
	private ProductReview r;
	private ProductLike like;
	private String url;	
}
