package kr.or.delivery.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.delivery.member.dao.ZcdMemberDao;
import kr.or.table.model.vo.Member;

@Service
public class ZcdMemberService {

	@Autowired
	private ZcdMemberDao dao;

	public int insertMember(Member member, String businessNo) {
		int result = dao.insertMember(member);
		if(result>0) {
			result = dao.insertMember2(businessNo);
		}else {
			return -1;
		}
		return result;
	}

	public int insertDeliveryMember(Member member) {
		return dao.insertDeliveryMember(member);
	}
}
