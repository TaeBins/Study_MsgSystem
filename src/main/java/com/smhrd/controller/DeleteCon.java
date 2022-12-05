package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MessageDAO;

public class DeleteCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("email");
		
		int row = new MessageDAO().deleteMessage(email);
		
		if(row>0) {
			System.out.println("메시지 삭제 성공");
		}else {
			System.out.println("메시지 삭제 실패");
		}
		return "Main.jsp";
	}

}
