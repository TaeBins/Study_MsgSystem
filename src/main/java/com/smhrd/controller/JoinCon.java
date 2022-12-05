package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class JoinCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		MemberDTO dto = new MemberDTO(email, pw, tel, address);
		
		int row = new MemberDAO().join(dto);
		
		String moveURL ;
		if(row>0) {
			System.out.println("회원가입 성공");
			request.setAttribute("email", email);
			moveURL = "./JoinSuccess.jsp";
		}else {
			System.out.println("회원가입 실패");
			moveURL = "./Main.jsp";
		}
		return moveURL;
	}

}
