package com.board2.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board2.beans.Board;
import com.board2.controller.CommandAction;
import com.board2.dao.BoardDao;

public class AjaxListAction implements CommandAction {

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		int page=0;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		ArrayList<Board> articleList = BoardDao.getInstance().getArticleList(page);
		request.setAttribute("articleList", articleList);
		return "ajaxList.jsp";
	}
}
