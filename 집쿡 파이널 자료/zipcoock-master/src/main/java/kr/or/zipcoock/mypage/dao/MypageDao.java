package kr.or.zipcoock.mypage.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.PwChangeVO;
import kr.or.zipcoock.mypage.vo.DeleteObj1;
import kr.or.zipcoock.mypage.vo.HQnaPage;
import kr.or.zipcoock.mypage.vo.InsertObj;
import kr.or.zipcoock.mypage.vo.MyAddr;
import kr.or.zipcoock.mypage.vo.MyHQna;
import kr.or.zipcoock.mypage.vo.MyLike;
import kr.or.zipcoock.mypage.vo.MyQna;
import kr.or.zipcoock.mypage.vo.MyReview;
import kr.or.zipcoock.mypage.vo.QnaPage;
import kr.or.zipcoock.mypage.vo.SearchTool;
import kr.or.zipcoock.mypage.vo.UpdateObj1;

@Repository
public class MypageDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insert(InsertObj obj) {
		return sqlSession.insert("mypage.insert",obj);	
	}
	
	public int update(UpdateObj1 obj) {
		return sqlSession.update("mypage.update",obj);	
	}
	
	public int delete(DeleteObj1 obj) {
		return sqlSession.delete("mypage.delete",obj);	
	}

	public int selectCnt(Map<String, Object> map) {
		return sqlSession.selectOne("mypage.selectCnt",map);	
	}

	public ArrayList<MyReview> selectMyReview(SearchTool tool) {
		List<MyReview> mylist = sqlSession.selectList("mypage.selectMyReview",tool);	
		return (ArrayList<MyReview>)mylist;
	}
	public ArrayList<MyQna> selectMyQna(SearchTool tool) {
		List<MyQna> mylist = sqlSession.selectList("mypage.selectMyQna",tool);	
		return (ArrayList<MyQna>)mylist;
	}
	public ArrayList<MyLike> selectMyLike(SearchTool tool) {
		List<MyLike> mylist = sqlSession.selectList("mypage.selectMyLike",tool);	
		return (ArrayList<MyLike>)mylist;
	}
	public ArrayList<MyAddr> selectMyAddr(SearchTool tool) {
		List<MyAddr> mylist = sqlSession.selectList("mypage.selectMyAddr",tool);	
		return (ArrayList<MyAddr>)mylist;
	}
	public ArrayList<MyHQna> selectMyHQna(SearchTool tool) {
		List<MyHQna> mylist = sqlSession.selectList("mypage.selectMyHQna",tool);	
		return (ArrayList<MyHQna>)mylist;
	}
	
	public int selectMyReviewCnt(SearchTool tool) {
		return sqlSession.selectOne("mypageCnt.selectMyReviewCnt",tool);	
	}
	public int  selectMyQnaCnt(SearchTool tool) {
		return sqlSession.selectOne("mypageCnt.selectMyQnaCnt",tool);	
	}
	public int selectMyLikeCnt(SearchTool tool) {
		return sqlSession.selectOne("mypageCnt.selectMyLikeCnt",tool);	
	}
	public int selectMyAddrCnt(SearchTool tool) {
		return sqlSession.selectOne("mypageCnt.selectMyAddrCnt",tool);	
	}
	public int selectMyHQnaCnt(SearchTool tool) {
		return sqlSession.selectOne("mypageCnt.selectMyHQnaCnt",tool);	
	}
	

	public int selectCnt(HashMap<String,String> map) {
		return sqlSession.selectOne("mypageCnt.selectCnt",map);	
	}

	public int changePw(PwChangeVO pwchangeVo) {
		return sqlSession.update("mypage.updatePw",pwchangeVo);	
		
	}
	
	public int selectPw(PwChangeVO pwchangeVo) {
		return sqlSession.selectOne("mypage.selectPw",pwchangeVo);	
	}

	public HQnaPage selectHQnaPage(int hqnaNo) {
		return sqlSession.selectOne("mypage.selectHQnaPage",hqnaNo);			
	}
	public QnaPage selectQnaPage(int qnaNo) {
		return sqlSession.selectOne("mypage.selectQnaPage",qnaNo);			
	}




}