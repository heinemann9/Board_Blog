package com.board2.action;

import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board2.beans.Board;
import com.board2.controller.CommandAction;
import com.board2.dao.BoardDao;

public class InsertAction implements CommandAction{

	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {
		request.setCharacterEncoding("euc-kr");
	    String title = request.getParameter("title");
	    String writer = request.getParameter("writer");
	    int count = 0;
	    String content = request.getParameter("content");
	    String regip = request.getRemoteAddr();
	   
	    if(title ==""||title==null) System.out.println("title is null");
	   
	    if(writer ==""||writer==null) System.out.println("writer is null");
	    else if(!Pattern.matches("^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[0-9a-zA-Z-]+)*$", writer)) System.out.println("");
	    
	    if(content==""||content==null) System.out.println("content is null");
	    
	    Board article =new Board();
	    
	    article.setRegip(regip);
	    article.setTitle(title);
	    article.setWriter(writer);
	    article.setContent(content);
	    article.setCount(count);
	    BoardDao.getInstance().insertArticle(article);
	    
	    return "insert.jsp";
	}
}
