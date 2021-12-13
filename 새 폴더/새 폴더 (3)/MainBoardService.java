package kr.or.zipcoock.board.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.zipcoock.board.dao.MainBoardDao;
import kr.or.zipcoock.board.vo.ProductCard;
import kr.or.zipcoock.board.vo.SearchTool;

@Service
public class MainBoardService {
	@Autowired
	private MainBoardDao dao;
	
	public ArrayList<ProductCard> MainBoard(SearchTool tool) {
		
		//게시물 갯수 구하기
		HashMap<String, Integer> map = tool.getCategoryMap();
		String[] cArr = tool.getCArr();
		for(int i=0;i<cArr.length;i++) {
			map.put(cArr[i], dao.selectCnt(i));
		}
		
		//pagination
		int reqPage = tool.getP(); 
		int postPerPage = tool.getShow();
		int end = reqPage * postPerPage;
		int start = end - postPerPage + 1;
		
		
		tool.setStart(start);
		tool.setEnd(end);
		ArrayList<ProductCard> cards = dao.selectProductCard(tool);

		int total = dao.selectTotalProduct(tool);

		int totalPage = total%postPerPage==0? total/postPerPage: total/postPerPage + 1;
		int pageNaviSize = 10;
		int pageNo = ((reqPage-1)/pageNaviSize)*pageNaviSize+1;

		
		tool.setTotalProduct(map.get(tool.getC()));
		tool.setFilteredProduct(total);
		tool.setTotalP(totalPage);
		
		
		
		

		StringBuffer pageNavi = new StringBuffer();
		
		if(pageNo != 1) {
			tool.setP(pageNo-1);
			pageNavi.append("<li class='page-item'><a class='page-link' href='"+tool.getURL()+"' tabindex=-1 >Previous</a></li>");
//			pageNavi.append("<li class='page-item disabled'><a class='page-link' href='"+tool.getURL()+"' tabindex=-1 aria-disabled='true'>Previous</a></li>");
		};
		
		for(int i = 0; i<pageNaviSize;i++) {
			tool.setP(pageNo);
			if(pageNo == reqPage) {
				pageNavi.append("<li class='page-item active'><a class='page-link' href='"+tool.getURL()+"'>"+tool.getP()+"</a></li>");
				
			} else {
				pageNavi.append("<li class='page-item'><a class='page-link' href='"+tool.getURL()+"'>"+tool.getP()+"</a></li>");				
			}
			pageNo++;

			if(pageNo > totalPage) {break;}
		}
		if(pageNo < totalPage) {
			tool.setP(pageNo);
			pageNavi.append("<li class='page-item'><a class='page-link' href='"+tool.getURL()+"'>Next</a></li>");
		}
		
		tool.setPageNavi(pageNavi.toString());
		tool.setP(reqPage);

		
		return cards;
		
	}
}
