package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.MessageDAO;

public class DeleteOneCon implements Command {

	public String execute(HttpServletRequest request, HttpServletResponse response) {

		int num = Integer.parseInt(request.getParameter("num"));
		
		int row = new MessageDAO().deleteOne(num);
		
		if(row > 0) {
			System.out.println("개별삭제성공");
		}else {
			System.out.println("개별삭제실패");
		}
		return "Main.jsp";
	}

}
