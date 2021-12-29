package kr.or.delivery.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.delivery.member.service.ZcdMemberService;
import kr.or.table.model.vo.Member;

@Controller
public class ZcdMemberController {
	
	@Autowired
	private ZcdMemberService service;
	
	@RequestMapping (value = "/checkZcdSeller.do")
	public String checkZcdSeller() {
		return "/delivery/member/checkZcdSeller";
	}
	
	@RequestMapping (value = "/deliveryJoinFrm.do")
	public String deliveryJoinFrm() {
		return "/delivery/member/deliveryJoinFrm";
	}
	
	@RequestMapping(value = "/zcdSellerJoinFrm.do")
	public String zcdSellerJoinFrm(Model model, String businessNo) {
		model.addAttribute("Bno", businessNo);
		return "delivery/member/zcdSellerJoin";
	}
	
	@RequestMapping(value = "/zcdSellerJoin.do")
	public String zcdSellerJoin(Member member, String businessNo, Model model) {
		int result = service.insertMember(member, businessNo);
		if(result>0) {
			model.addAttribute("msg", "회원가입 성공");
			model.addAttribute("loc", "/");
		}else {
			model.addAttribute("msg", "회원가입 실패");
			model.addAttribute("loc", "/");
		}
		return "common/msg";
	}
	
	@RequestMapping(value = "/deliveryJoin.do")
	public String deliveryJoin(Member member, Model model) {
		int result = service.insertDeliveryMember(member);
		if(result>0) {
			model.addAttribute("msg", "회원가입 성공");
			model.addAttribute("loc", "/");
		}else {
			model.addAttribute("msg", "회원가입 실패");
			model.addAttribute("loc", "/");
		}
		return "common/msg";
	}
}
