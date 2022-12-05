package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MessageDAO {

	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 메시지 저장
	public int insertMessage(MessageDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("insertMessage", dto);
		session.close();
		
		return row;
	}
	
	// 나에게 온 메시지 조회
	// sql : select * from web_message where recipient = ? 로그인한 이메일
	public ArrayList<MessageDTO> showMessage(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MessageDTO> msg_list = (ArrayList)session.selectList("showMessage", email);
		session.close();
		
		return msg_list;
		
	}
	
	// 나에게 온 메시지 전체 삭제
	public int deleteMessage(String email) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteMessage", email);
		session.close();
		
		return row;
	}
	
	// 메시지 개별 삭제
	public int deleteOne(int num) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.delete("deleteOne", num);
		session.close();
		
		return row;
	}
	
	
	
	
}
