package com.smhrd.model;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.db.SqlSessionManager;

public class MemberDAO {
	
	private SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	
	// 회원가입
	// insert into web_member values(email, pw, tel, address)
	public int join(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.insert("join", dto);
		session.close();
		
		return row;
	}
	
	// 로그인
	// select * from web_member where email =? and pw =?
	public MemberDTO login(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		MemberDTO info = session.selectOne("login", dto);
		session.close();
		
		return info;
	}
	
	// 회원정보수정
	public int update(MemberDTO dto) {
		SqlSession session = sqlSessionFactory.openSession(true);
		int row = session.update("update", dto);
		session.close();
		
		return row;
	}
	
	// 회원 조회
	public ArrayList<MemberDTO> showMember() {
		SqlSession session = sqlSessionFactory.openSession(true);
		ArrayList<MemberDTO> mem_list = (ArrayList)session.selectList("showMember");
		session.close();
		
		return mem_list;
	}
	
	// 아이디 중복체크
	public boolean idCheck(String email) {
		boolean result = false;
		SqlSession session = sqlSessionFactory.openSession(true);
		String id = session.selectOne("idCheck", email);
		
		// id가 null이 아닐 때 = 중복되는 email값이 있다.
		if(id != null) {
			result = true;
		}
		
		return result;
	}

}





