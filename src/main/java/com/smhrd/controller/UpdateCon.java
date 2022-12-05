package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class UpdateCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		MemberDTO info = new MemberDTO(email, pw, tel, address);
		
		int row = new MemberDAO().update(info);
		
		if(row>0) {
			System.out.println("회원정보 수정 성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("회원정보 수정 실패");
		}
		return "Main.jsp";
	}

}
