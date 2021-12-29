package kr.or.seller.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;


import kr.or.seller.model.service.SellerService;
import kr.or.seller.model.vo.SellerProductPageData;
import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Product;
import kr.or.table.model.vo.ProductImg;
import kr.or.table.model.vo.PwChangeVO;
import kr.or.table.model.vo.ReturnPolicy;
import kr.or.table.model.vo.ShippingInfo;

@Controller
public class SellerController {
@Autowired
private SellerService service;

	@RequestMapping(value = "/sellerMypage.do")
	public String sellerMypage()
	{
		return "zipcoock/seller/sellerMypage";
	}
	@RequestMapping(value = "productMgr.do")
	public String productMgr()
	{
		return "zipcoock/seller/productMgr";
	}
	@RequestMapping(value = "sellerInfo.do")
	public String sellerInfo()
	{
		return "zipcoock/seller/sellerInfo";
	}
	@RequestMapping(value = "sellerQNA.do")
	public String sellerQNA()
	{
		return "zipcoock/seller/sellerQNA";
	}
	@RequestMapping(value = "statistics.do")
	public String statistics() {
	return "zipcoock/seller/statistics";
}
	@RequestMapping(value="/sellerInfoFrm.do")
	public String sellerInfoFrm(Member member, Model model, HttpSession session) {
		Member m = (Member)session.getAttribute("m");
		BusinessSellerInfo bsi = service.selectOneSmember(m.getMemberNo()); 
		 model.addAttribute("bsi", bsi);
		 System.out.println(bsi);
		 
		return "zipcoock/seller/mypage/sellerInfoFrm";
	}
	
	@RequestMapping(value="/zipsellerMypage.do")
	public String sellerMypage(Member member, Model model, HttpSession session) {
		Member m = (Member)session.getAttribute("m");
		
		BusinessSellerInfo bsi = service.selectOneSmember(m.getMemberNo());
		String email = bsi.getEmail();
				String[] useremail = email.split("@");
				
		 model.addAttribute("bsi", bsi);
		 model.addAttribute("email1", useremail[0]);
		 model.addAttribute("email2", useremail[1]);
		 
		return "zipcoock/seller/mypage/mypage";
	}
	@RequestMapping(value="/updateSellerMember.do")
	public String updateSellerMember(BusinessSellerInfo businessSellerInfo, Model model, HttpSession session, String email1, String email2) {
		businessSellerInfo.setEmail(email1 + "@" + email2);
		System.out.println(businessSellerInfo);
		int result = service.updateSellerMember(businessSellerInfo);
		
		System.out.println(result);
		 if(result>0) {
 			 model.addAttribute("msg","회원정보수정성공");
 		 }else {
 			 model.addAttribute("msg","회원정보수정실패");
 		 }
 		model.addAttribute("loc","/");
 		 return "zipcoock/common/msg";
	}

	@RequestMapping(value="/PwChange.do")
	public String PwChange(PwChangeVO pwVO, Model model) {
		System.out.println(pwVO);
		int result  = service.sellerChangePw(pwVO);// 이떄 암호화 실행 그래서 service에 memberType만 보내짐 해결방안 1. service 2번 호출해서 newpw와 oldpw 각각 m에 넣어보냄
		System.out.println(result);
		if(result == -1) {
			 model.addAttribute("msg","비밀번호가 틀립니다.");
			 
		 }else if(result == 0){
				 
				 model.addAttribute("msg","비밀번호 변경 실패.");
			 }else {
				 model.addAttribute("msg","비밀번호 변경 성공.");
			 }
		 
		model.addAttribute("loc","/");
		return "zipcoock/common/msg";
		
	}
	@RequestMapping(value="/insertProductFrm.do")
	public String insertProductFrm(HttpSession session, Model model) {
		Member m = (Member)session.getAttribute("m");
		
		BusinessSellerInfo bsi = service.selectOneSmember(m.getMemberNo());
		return "zipcoock/seller/mypage/insertProductFrm";
	}
	
	@RequestMapping(value="/productList.do")
	public String productList(Model model, HttpSession session, int reqPage) {
	Member m = (Member)session.getAttribute("m");
	SellerProductPageData sppd = service.selectProductList(m,reqPage);
	System.out.println(reqPage);
	System.out.println(sppd);
	
	model.addAttribute("sppd",sppd);
	model.addAttribute("pList",sppd.getList());
	System.out.println(sppd.getList());
		return "zipcoock/seller/mypage/productList";
	}
	@Transactional
	@RequestMapping(value="/productInsert.do")
	public String productInsert(Model model, HttpSession session,Product product,HttpServletRequest request, ReturnPolicy returnPolicy,ShippingInfo shippingInfo,MultipartFile[] productImg) {
		//파일목록을 저장할 List
		ArrayList<ProductImg> list = new ArrayList<ProductImg>();
	
		
		//MultipartFile[]배열은 파일을 첨부하지 않더라도 무조건 길이가 1인 배열
		//배열의 첫번째 파일이 비어있는지 체크하는 방식으로 파일 첨부여부 확인
		if(productImg[0].isEmpty()) {
		//첨부 파일이 없는경우	뭐안할예정
			System.out.println("오류발생시점 테스트 2"+productImg[0]);
		}else {
			//첨부파일이 있는경우
			//MultipartFile을 이용하여 파일업로드 작업을 수행해야함
			//파일을 업로드할 경우 설정
			//request.....getrealPath -> /wabapp/폴더
			String savePath = request.getSession().getServletContext().getRealPath("resources/upload/product/");
			//반복문 통해서 파일 처리(파일업로드)564 891 5428
			for(MultipartFile file : productImg) {
				//유저가 올린 파일명이 이미 업로드 폴더에 존재하면 덮어쓰기가 되어 이전파일이 삭제 
				//파일명 중복처리
				//사용자가 올린 파일명
				String filename = file.getOriginalFilename(); //getOriginalFilename로 파일명 가져오기
				System.out.println(filename+"filename");
				//test.txt -> test.	txt ->파일명과 확장자를 나누어줌
				String onlyFilename = filename.substring(0,filename.indexOf("."));//test 앞 0번째부터 .까지 잘라오기
				System.out.println(onlyFilename+"onlyfilename");
				String extention = filename.substring(filename.indexOf("."));//.부터 끝까지 잘라오기 .txt
				System.out.println(extention+"extention");
				//실제 업로드할 파일명을 저장할 변수
				String filepath = null;
				//중복된 파일 넘버링 위한 변수
				int count=0;
				while(true) { //파일명 복수로 업로드 가능하기 떄문에 while
					if(count == 0) { // 파일이름 존재하지 않을경우
						filepath = onlyFilename+extention;//test.txt
						//실제업로드할 파일명 = test 앞 0번쨰부터 .앞까지 +.부터 끝까지 잘라온 파일명
					}else { // 파일이름 존재할경우
						filepath = onlyFilename+"_"+count+extention;//test_3.txt
					}//실제업로드할 파일명 = test 앞 0번쨰부터 .앞까지 + _ + .부터 끝까지 잘라온 파일명 
					File checkFile = new File(savePath+filepath); //실제파일이름
					if(!checkFile.exists()) {//exists : 존재여부 존재하면 t 아니면 f
						break; //존재하지 않을경우 t while문 빠져나감 //존재할경우 f break동작안하고 count++ 실행후 while동작
					}
					System.out.println(savePath+filepath+"파일경로");
					count++;//중복시 if구문에서 break로 빠져나오지 못하고 카운트값 증가후 while문으로 복귀
				}
				//파일명 중복처리가 끝나면 파일업로드
				try {
					//중복처리가 끝난 파일명(filepath)으로 파일을 업로드
					FileOutputStream fos = new FileOutputStream(new File(savePath+filepath));
					//업로드 속도 증가를 위한 보조 스트림
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					//파일 업로드
					byte[] bytes = file.getBytes(); // 파일을 바이트단위로 변환 
					bos.write(bytes);//파일업로드
					bos.close(); //연결 해제
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				//DB에 파일 업로드하기 위한 구문
				ProductImg fv = new ProductImg();
				fv.setFileName(filename);//getOriginalFilename로 가져온 파일명
				fv.setFilePath(filepath);//중복체크 결과에따라 test 앞 0번쨰부터 .앞까지 + _ + .부터 끝까지 잘라온 파일명
				list.add(fv);//리스트에 추가
			}
			
		}
		list.size();
		//DB에 insert하기 위해 Board객체와 file이 담긴 list를 보내줌
		int result = service.productInsert(product,shippingInfo,list,returnPolicy);
		//-1 파일이 없는경우 || file_tbl db에 insert한 횟수와 리턴받은 list의 사이즈가 다른경우
		if(result == -1 || result != list.size()) {
			model.addAttribute("msg","등록실패");
		}else {
			//정상인경우
			model.addAttribute("msg","등록성공");
			
		}
		model.addAttribute("reqPage",1);
		model.addAttribute("loc","/productList.do");
		return "zipcoock/common/msg";
		
	
		
	}
	
	/*
	 * @RequestMapping(value="/productInsertFrm.do") public String producInsertFrm()
	 * { return "zipcoock/seller/mypage/insertProduct"; }
	 */
	@RequestMapping(value="/updateProductFrm.do")
	public String insertProductFrm(Product product, Model model) {
		HashMap<Object, Object> p = new HashMap<Object, Object>();
		p = service.selectOneProductInfo(product);
		model.addAttribute("p",p);
		System.out.println(p+"맵 p 값");
		return "zipcoock/seller/mypage/updateProductFrm";
	}

}
