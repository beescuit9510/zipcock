package kr.or.delivery.purchase.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.delivery.model.vo.ZcdCartVo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.table.model.vo.Address;
import kr.or.table.model.vo.Member;

@Repository
public class DeliveryBuyerDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Member selectOneMember(Member m) {
		return (Member)sqlSession.selectOne("member.selectOneMember",m);
	}

	public int updatePwMember(Member m) {
		return sqlSession.update("member.updateSmemberPW",m);
	}

	public int updatePhone(Member m) {
		return sqlSession.update("zcdBuyer.updatePhone",m);
	}

	public ArrayList<ZcdCartVo> selectOneCart(int memberNo) {
		List<ZcdCartVo> list=sqlSession.selectList("zcdBuyer.selectOneCart",memberNo);
		return (ArrayList<ZcdCartVo>) list;
	}

	public int deleteOneCart(ZcdCartVo zcv) {
		return sqlSession.delete("zcdBuyer.delteOneCart",zcv);
	}

	public ArrayList<ZcdStore> selectStoreList() {
		List<ZcdStore> list=sqlSession.selectList("zcdBuyer.selectStoreList");
		return (ArrayList<ZcdStore>) list;
	}

	public ArrayList<Address> selectAddrList(int memberNo) {
		List<Address> list=sqlSession.selectList("zcdBuyer.selectAddrList");
		return (ArrayList<Address>) list;
	}
	
	
}
