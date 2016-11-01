package com.board2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board2.beans.Board;
import com.board2.controller.CommandAction;
import com.board2.dao.BoardDao;

public class DeleteAction implements CommandAction{
	
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		System.out.println(request.getParameter("idx"));
		int  idx = Integer.parseInt(request.getParameter("idx"));
		Board article = BoardDao.getInstance().getArticle(idx);
		BoardDao.getInstance().deleteArticle(idx);
		
		return "delete.jsp";
	}
}