package kr.or.delivery.coupon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CouponController {

	@RequestMapping(value = "/coupon.do")
	public String coupon() {
		return "delivery/coupon/coupon";
	}
}
