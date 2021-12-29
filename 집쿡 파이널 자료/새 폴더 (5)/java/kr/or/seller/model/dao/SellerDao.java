package kr.or.seller.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.table.model.vo.BusinessSellerInfo;
import kr.or.table.model.vo.Member;
import kr.or.table.model.vo.Product;
import kr.or.table.model.vo.ProductImg;
import kr.or.table.model.vo.ReturnPolicy;
import kr.or.table.model.vo.ShippingInfo;

@Repository
public class SellerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public BusinessSellerInfo selectOneSmember(int memberNo) {
		return sqlSession.selectOne("businessSellerInfo.selectOneSmember", memberNo);

	}

	public int updateSellerMember(BusinessSellerInfo businessSellerInfo) {

		return sqlSession.update("businessSellerInfo.updateSellerMember", businessSellerInfo);
	}

	public ArrayList<Product> selectProductList(Map<Object, Object> pagedata) {
		List<Product> list = sqlSession.selectList("product.selectProductList", pagedata);
		System.out.println(list + "셀렉트 리스트 결과");
		return (ArrayList<Product>) list;

	}

	public int selectTotalCount(Member m) {
		return sqlSession.selectOne("product.selectTotalCount", m);

	}

	public int insertProduct(Product product) {

		return sqlSession.insert("product.insertProduct", product);
	}

	public int insertShippingInfo(ShippingInfo si) {
		return sqlSession.insert("shippingInfo.insertShippingInfo", si);
	}

	public int insertProductMainImg(ProductImg pi) {
		System.out.println(pi);
		return sqlSession.insert("productImg.insertProductMainImg", pi);
	}

	public int insertProductImg(ProductImg pi) {
		System.out.println(pi);
		return sqlSession.insert("productImg.insertProductImg", pi);
	}

	public int insertReturnPolicy(ReturnPolicy returnPolicy) {
		System.out.println(returnPolicy);
		return sqlSession.insert("returnPolicy.insertReturnPolicy", returnPolicy);
	}

	public HashMap<Object, Object> selectOneproductInfo(Product product) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * public ArrayList<Product> selectProductList(Member m) { List<Product> list =
	 * sqlSession.selectList("product.selectProductList",m); return
	 * (ArrayList<Product>)list; }
	 */

}
