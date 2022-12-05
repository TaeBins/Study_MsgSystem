package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

public class LoginCon implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(email, pw);
		
		MemberDTO info = new MemberDAO().login(dto);
		
		if(info != null) {
			System.out.println("로그인성공");
			
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}else {
			System.out.println("로그인실패");
		}
		
		return "Main.jsp";
	}
}
