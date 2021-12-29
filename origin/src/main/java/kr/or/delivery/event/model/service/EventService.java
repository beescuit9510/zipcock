package kr.or.delivery.event.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.org.apache.bcel.internal.generic.AALOAD;

import kr.or.delivery.event.model.dao.EventDao;
import kr.or.delivery.model.vo.ZcdEvent;
import kr.or.delivery.model.vo.ZcdEventFile;

@Service
public class EventService {

	@Autowired
	private EventDao dao;

	public ArrayList<ZcdEvent> selectEventList() {
		ArrayList<ZcdEvent> list = dao.selectEventList();
		return list;
	}

	public int insertEvent(ZcdEvent ze, ArrayList<ZcdEventFile> list) {
		int result1 = dao.insertEvent(ze);
		int result = 0;
		if(result1>0) {
			int eventNo = dao.selectEventNo();
			for(ZcdEventFile zef : list) {
				zef.setEventNo(eventNo);
				result += dao.insertFile(zef);
			}
		}else {
			return -1;
		}
		return result;
	}

	public ZcdEvent selectOneEvent(int eventNo) {
		return dao.selectOneEvent(eventNo);
	}

	public int deleteEvent(int eventNo) {
		return dao.deleteEvent(eventNo);
	}

	public int updateEvent(ZcdEvent ze, ArrayList<ZcdEventFile> list) {
		int result1 = dao.updateEvent(ze);
		int result = 0;
		if(result>0) {
			int eventNo = dao.selectEventNo();
			for(ZcdEventFile zef : list) {
				zef.setEventNo(eventNo);
				result += dao.updateFile(zef);
			}
		}else {
			return -1;
		}
		return result;
	}
}
