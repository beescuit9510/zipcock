package kr.or.delivery.seller.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.or.delivery.model.vo.StoreLogo;
import kr.or.delivery.model.vo.ZcdStore;
import kr.or.delivery.seller.model.service.DeliverySellerService;
import kr.or.table.model.vo.Member;

@Controller
public class DeliverySellerController {

	@Autowired
	private DeliverySellerService service;
	
	@RequestMapping(value="/zcdSellerloginFrm.do")
	public String zcdSellerloginFrm() {
		return "delivery/seller/zcdSellerLoginFrm";
	}
	
	/* 딜리버리 판매자 임시 로그인 */
	@RequestMapping(value="/zcdSellerlogin.do")
	public String zcdSellerlogin(Member member, HttpSession session, Model model) {
		Member m = service.selectOneMember(member);
		if(m != null) {
			session.setAttribute("m", m);
			ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
			model.addAttribute("list", list);
			return "delivery/seller/manageMarketFrm";
		} else {
			model.addAttribute("msg","아이디 또는 비밀번호를 확인하세요");
			model.addAttribute("loc", "/");
			return "zipcoock/common/msg";
		}
	}
	
	@RequestMapping(value="/manageMarketFrm.do")
	public String manageMarketFrm(Member member, HttpSession session, Model model) {
		Member m = (Member)session.getAttribute("m");
		ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
		model.addAttribute("list", list);
		return "delivery/seller/manageMarketFrm";
	}
	
	@RequestMapping(value="/addMarketFrm.do")
	public String addMarketFrm() {
		return "delivery/seller/addMarketFrm";
	}
	
	@RequestMapping(value="/manageMenuFrm.do")
	public String manageMenuFrm(Member member, HttpSession session, Model model) {
		Member m = (Member)session.getAttribute("m");
		ArrayList<ZcdStore> list = service.selectZcdStoreList(m.getMemberNo());
		model.addAttribute("list", list);
		return "delivery/seller/manageMenuFrm";
	}
	
	@RequestMapping(value="/storeNameCheck.do")
	@ResponseBody
	public int storeNameCheck(String storeName) {
		String sn = service.selectOneStoreName(storeName);
		if (sn == null) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storeNameCheck2.do")
	@ResponseBody
	public int storeNameCheck2(String storeName, int storeNo) {
		String sn1 = service.selectOneStoreName(storeName);
		String sn2 = service.selectOneStoreName2(storeNo);
		if (sn1 == null) {
			return 0;
		} else if (sn1.equals(sn2)) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storePhoneCheck.do")
	@ResponseBody
	public int storePhoneCheck(String storePhone) {
		String sp = service.selectOneStorePhone(storePhone);
		if (sp == null) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/storePhoneCheck2.do")
	@ResponseBody
	public int storePhoneCheck2(String storePhone, int storeNo) {
		String sp1 = service.selectOneStorePhone(storePhone);
		String sp2 = service.selectOneStorePhone2(storeNo);
		if (sp1 == null) {
			return 0;
		} else if (sp1.equals(sp2)) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/addMarket.do")
	public String addMarket(ZcdStore zs, MultipartFile[] files, HttpServletRequest request, Model model) {
		// 파일목록을 저장할 List
		ArrayList<StoreLogo> list = new ArrayList<StoreLogo>();
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				StoreLogo sl = new StoreLogo();
				sl.setFilename(filename);
				sl.setFilepath(savePath);
				list.add(sl);
			}
		}
		int result = service.addMarket(zs, list);
		if (result == -1 || result != list.size()) {
			model.addAttribute("msg", "매장이 등록되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg", "매장이 등록되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/changeState.do")
	@ResponseBody
	public int changeState(ZcdStore zs, Model model) {
		int result = service.changeState(zs);
		if (result > 0) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@RequestMapping(value="/selectOneMarket.do")
	public String selectOneMarket(int storeNo, Model model) {
		ZcdStore zs = service.selectOneMarket(storeNo);
		model.addAttribute("zs", zs);
		return "delivery/seller/selectOneMarketFrm";
	}
	
	@RequestMapping(value="/modifyMarket.do")
	public String modifyMarket(ZcdStore zs, int status, MultipartFile[] files, HttpServletRequest request, Model model) {
		// 파일목록을 저장할 List
		ArrayList<StoreLogo> list = new ArrayList<StoreLogo>();
		if (files[0].isEmpty()) {
			// 첨부파일이 없는 경우
			
		} else {
			// 첨부파일이 있는 경우
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/zcdSeller/");
			// 반복문을 이용해서 파일 처리(파일업로드)
			for (MultipartFile file : files) {
				// 사용자가 올린 파일명
				String filename = file.getOriginalFilename(); // 치킨_로고.png
				String onlyFilename = filename.substring(0, filename.indexOf(".")); // 치킨_로고
				String extention = filename.substring(filename.indexOf(".")); // .png
				String filepath = null;
				// 파일명 중복 시 숫자를 붙이는 코드
				int count = 0;
				while (true) {
					if (count == 0) {
						filepath = onlyFilename + extention; // 치킨_로고.png
					} else {
						filepath = onlyFilename + "_" + count + extention; // 치킨_로고_1.png
					}
					File checkFile = new File(savePath + filepath); // /resources/upload/zcdSeller/치킨_로고.png
					if (!checkFile.exists()) {
						break;
					}
					count++;
				}
				// 파일명 중복처리가 끝나면 파일 업로드
				try {
					// 중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath + filepath));
					// 업로드 속도 증가를 위한 보조스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					// 파일 업로드
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				StoreLogo sl = new StoreLogo();
				sl.setFilename(filename);
				sl.setFilepath(savePath);
				list.add(sl);
			}
		}
		int result = 0;
		if (status == 1) {
			result = service.modifyMarket(zs);
		} else if (status == 2) {
			result = service.modifyMarket(zs, list);
		}
		if (result == -1) {
			model.addAttribute("msg", "매장 정보가 수정되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg", "매장 정보가 수정되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
	@RequestMapping(value="/deleteOneMarket.do")
	public String deleteOneMarket(int storeNo, Model model) {
		int result = service.deleteOneMarket(storeNo);
		if (result > 0) {
			model.addAttribute("msg","매장 정보가 삭제되었습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		} else {
			model.addAttribute("msg","매장 정보가 삭제되지 않았습니다.");
			model.addAttribute("loc", "/manageMarketFrm.do");
		}
		return "zipcoock/common/msg";
	}
	
}
