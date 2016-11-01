package com.board2.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board2.beans.Board;
import com.board2.controller.CommandAction;
import com.board2.dao.BoardDao;

public class CountAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		
		int idx =Integer.parseInt( request.getParameter("idx"));
		
		Board article = BoardDao.getInstance().getArticle(idx);	
		String regip = request.getRemoteAddr();
		
		if(!regip.equals(article.getRegip())){
			int count = article.getCount();
			article.setCount(++count);
			BoardDao.getInstance().setArticleCount(article);
		}
		request.setAttribute("url","content.do?idx="+idx);

		return "redirect2.jsp";
		}
}
