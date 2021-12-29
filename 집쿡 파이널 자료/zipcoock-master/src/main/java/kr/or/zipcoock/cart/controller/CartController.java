package kr.or.zipcoock.cart.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.zipcoock.cart.vo.ItemInCart;

@Controller
public class CartController {
	@RequestMapping(value = "/cart.do")
	public String callCartFrm() {
		return "zipcoock/cart/cartFrm";
	}

	@ResponseBody
	@RequestMapping(value = "/addToCart.do")
	public void addToCart(ItemInCart item, HttpSession session) {
		ArrayList<ItemInCart> cart =  (ArrayList<ItemInCart>)session.getAttribute("cart");
		if(cart==null) {
			cart = new ArrayList<ItemInCart>();
			session.setAttribute("cart", cart);
		}
		cart.add(item);
		
		System.out.println(cart);
	}

}
