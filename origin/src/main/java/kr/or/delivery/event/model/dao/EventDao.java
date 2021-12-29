package kr.or.delivery.event.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.delivery.model.vo.ZcdEvent;
import kr.or.delivery.model.vo.ZcdEventFile;

@Repository
public class EventDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<ZcdEvent> selectEventList() {
		List<ZcdEvent> list = sqlSession.selectList("zcdevent.eventList");
		return (ArrayList<ZcdEvent>)list;
	}

	public int insertEvent(ZcdEvent ze) {
		return sqlSession.insert("zcdevent.insertEvent",ze);
	}

	public int selectEventNo() {
		return sqlSession.selectOne("zcdevent.getEventNo");
	}

	public int insertFile(ZcdEventFile zef) {
		return sqlSession.insert("zcdevent.insertFile",zef);
	}

	public ZcdEvent selectOneEvent(int eventNo) {
		return sqlSession.selectOne("zcdevent.selectOneEvent",eventNo);
	}

	public int deleteEvent(int eventNo) {
		return sqlSession.delete("zcdevent.deleteEvent",eventNo);
	}

	public int updateEvent(ZcdEvent ze) {
		return sqlSession.update("zcdevent.updateEvent",ze);
	}

	public int updateFile(ZcdEventFile zef) {
		return sqlSession.update("zcdevent.updateFile",zef);
	}
}
