package kr.or.delivery.purchase.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.delivery.model.vo.ZcdCartVo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.delivery.model.vo.updatePw;
import kr.or.delivery.purchase.dao.DeliveryBuyerDao;
import kr.or.table.model.vo.Address;
import kr.or.table.model.vo.Member;

@Service
public class DeliveryBuyerService {
	
	@Autowired
	private DeliveryBuyerDao dao;

	public int updatePw(updatePw up) {
		Member m=new Member();
		m.setMemberId(up.getMemberId());
		m.setMemberPw(up.getOldPw());
		Member member=dao.selectOneMember(m);
		if(member!=null) {
			m.setMemberPw(up.getNewPw());
			return dao.updatePwMember(m);
		}else {
			return -1;
		}
	}

	public int updatePhone(Member m) {
		return dao.updatePhone(m);
	}

	public ArrayList<ZcdCartVo> selectOneCart(int memberNo) {
		return dao.selectOneCart(memberNo);
	}

	public int deleteOneCart(ZcdCartVo zcv) {
		return dao.deleteOneCart(zcv);
	}

	public ArrayList<ZcdStore> selectStoreList() {
		return dao.selectStoreList();
	}

	public ArrayList<Address> selectAddrList(int memberNo) {
		return dao.selectAddrList(memberNo);
	}
}
