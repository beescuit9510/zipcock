package kr.or.zipcoock.cart.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.table.model.vo.Member;
import kr.or.zipcoock.cart.service.CartService;
import kr.or.zipcoock.cart.vo.Cart;
import kr.or.zipcoock.cart.vo.ItemInCart;


@Controller
public class CartController {
	@Autowired
	CartService service;

	@RequestMapping(value = "/cart.do")
	public String callCartFrm(HttpSession session, Model model) {
		ArrayList<ItemInCart> cart = (ArrayList<ItemInCart>) session.getAttribute("cart");
		Member m = (Member) session.getAttribute("m");

		model.addAttribute("map", service.selectItems(cart));
		model.addAttribute("addr", service.selectAddress(m.getMemberNo()));
		return "zipcoock/cart/cartFrm";
	}

	@ResponseBody
	@RequestMapping(value = "/deleteProduct.do")
	public String deleteProduct(ItemInCart item, HttpSession session) {
		ArrayList<ItemInCart> cart = (ArrayList<ItemInCart>) session.getAttribute("cart");

		for (ItemInCart i : cart) {
			if (i.getProductNo() == item.getProductNo()) {
				cart.remove(i);
			}
		}
		return "zipcoock/cart/cartFrm";
	}

	@ResponseBody
	@RequestMapping(value = "/up.do")
	public void up(ItemInCart item, HttpSession session) {
		ArrayList<ItemInCart> cart = (ArrayList<ItemInCart>) session.getAttribute("cart");

		for (ItemInCart i : cart) {
			i.setQuantity(i.getProductNo() == item.getProductNo() ? item.getQuantity() : i.getQuantity());
		}

	}

	@ResponseBody
	@RequestMapping(value = "/down.do")
	public void down(ItemInCart item, HttpSession session) {
		ArrayList<ItemInCart> cart = (ArrayList<ItemInCart>) session.getAttribute("cart");

		for (ItemInCart i : cart) {
			i.setQuantity(i.getProductNo() == item.getProductNo() ? item.getQuantity() : i.getQuantity());
		}

	}

	@ResponseBody
	@RequestMapping(value = "/addToCart.do", produces = "application/json;charset=utf-8")
	public String addToCart(ItemInCart item, HttpSession session) {
		ArrayList<ItemInCart> cart = (ArrayList<ItemInCart>) session.getAttribute("cart");
		if (cart == null) {
			cart = new ArrayList<ItemInCart>();
			session.setAttribute("cart", cart);
		}

		for (ItemInCart i : cart) {
			if (i.getProductNo() == item.getProductNo()) {
				return new Gson().toJson("이미 담긴 상품입니다.");
			}


		}
		cart.add(item);
		return new Gson().toJson("장바구니 담기 완료");
	}
	
	
	@RequestMapping(value = "/EXAMPLE.do")
	public String cart(Cart cart, int[] quantities, int[] productNos, HttpServletRequest req) {
		cart.setItems(new ArrayList<ItemInCart>());
		for(int i=0; i<productNos.length;i++) {
			cart.getItems().add(new ItemInCart(quantities[i],productNos[i]));
		}
		req.setAttribute("cart", cart);
		
		return "forward:/EXAMPLE2.do";
	}
	@RequestMapping(value = "/EXAMPLE2.do")
	public String cart(HttpServletRequest req) {
		Cart cart = (Cart)req.getAttribute("cart");
		System.out.println(cart);
		return "redirect:/";
	}



}
