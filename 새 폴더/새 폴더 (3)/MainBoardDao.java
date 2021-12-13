package kr.or.zipcoock.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.or.table.model.vo.Member;
import kr.or.zipcoock.board.vo.ProductCard;
import kr.or.zipcoock.board.vo.SearchTool;

@Controller
public class MainBoardDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int selectCnt(int categoryNo) {
		return sqlSession.selectOne("mainboard.selectCnt",categoryNo==0? null:categoryNo);

	}

	@SuppressWarnings("unchecked")
	public ArrayList<ProductCard> selectProductCard(SearchTool tool) {
		List<ProductCard> cards =sqlSession.selectList("mainboard.selectProductCard",tool);
		return (ArrayList<ProductCard>)cards;
		
	}

	public int selectTotalProduct(SearchTool tool) {
		return sqlSession.selectOne("mainboard.selectTotalProduct",tool);
	}

}
