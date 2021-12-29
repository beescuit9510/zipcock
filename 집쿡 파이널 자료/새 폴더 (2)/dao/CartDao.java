package kr.or.zipcoock.cart.dao;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.zipcoock.cart.vo.Address;
import kr.or.zipcoock.cart.vo.Product;

@Repository
public class CartDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Product> selectProduct(HashMap<String, Object[]> map){
		List<Product> cards = sqlSession.selectList("cart.selectProduct", map);
		return (ArrayList<Product>) cards;
	};
	public ArrayList<Address> selectAddress(int memberNo){
		List<Address> addrs = sqlSession.selectList("cart.selectAddress", memberNo);
		return (ArrayList<Address>) addrs;
	};

}
