package kr.or.delivery.coupon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.delivery.coupon.dao.CouponDao;

@Service
public class CouponService {

	@Autowired
	private CouponDao dao;
}
