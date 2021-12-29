package kr.or.delivery.seller.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.delivery.model.vo.StoreLogo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.table.model.vo.Member;

@Repository
public class DeliverySellerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member member) {
		return (Member)sqlSession.selectOne("zcdseller.selectOneMember", member);
	}

	public String selectOneStoreName(String storeName) {
		return sqlSession.selectOne("zcdseller.selectOneStoreName", storeName);
	}
	
	public String selectOneStoreName2(int storeNo) {
		return sqlSession.selectOne("zcdseller.selectOneStoreName2", storeNo);
	}

	public String selectOneStorePhone(String storePhone) {
		return sqlSession.selectOne("zcdseller.selectOneStorePhone", storePhone);
	}
	
	public String selectOneStorePhone2(int storeNo) {
		return sqlSession.selectOne("zcdseller.selectOneStorePhone2", storeNo);
	}

	public int addMarket(ZcdStore zs) {
		return sqlSession.insert("zcdseller.addMarket", zs);
	}

	public int insertStoreLogo(StoreLogo sl) {
		return sqlSession.insert("zcdseller.insertStoreLogo", sl);
	}

	public ArrayList<ZcdStore> selectZcdStoreList(int memberNo) {
		List<ZcdStore> list = sqlSession.selectList("zcdseller.selectZcdStoreList", memberNo);
		return (ArrayList<ZcdStore>) list;
	}

	public int changeState(ZcdStore zs) {
		return sqlSession.update("zcdseller.changeState", zs);
	}

	public ZcdStore selectOneMarket(int storeNo) {
		return sqlSession.selectOne("zcdseller.selectOneMarket", storeNo);
	}

	public int modifyMarket(ZcdStore zs) {
		return sqlSession.update("zcdseller.modifyMarket", zs);
	}

	public int modifyStoreLogo(StoreLogo sl) {
		return sqlSession.update("zcdseller.modifyStoreLogo", sl);
	}

	public int deleteOneMarket(int storeNo) {
		return sqlSession.delete("zcdseller.deleteOneMarket", storeNo);
	}

}
