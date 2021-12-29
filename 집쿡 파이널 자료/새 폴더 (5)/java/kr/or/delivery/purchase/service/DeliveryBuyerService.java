package kr.or.delivery.purchase.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.delivery.purchase.dao.DeliveryBuyerDao;

@Service
public class DeliveryBuyerService {
	
	@Autowired
	private DeliveryBuyerDao dao;
}
