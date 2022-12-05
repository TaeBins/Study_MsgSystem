package com.smhrd.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MemberDAO;

public class IdCheckCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 사용자가 입력한 email을 받아와서 해당 email이 db에 있는지 없는지 체크
		String email = request.getParameter("email");
		System.out.println("email : "+email);
		
		boolean result = new MemberDAO().idCheck(email);
		
		try {
			PrintWriter out = response.getWriter();
			out.print(result);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
