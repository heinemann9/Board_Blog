package com.board2.action;

import java.util.ArrayList;
import java.sql.*;
import com.board2.beans.Board;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board2.beans.Board;
import com.board2.controller.CommandAction;
import com.board2.dao.BoardDao;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class ListAction implements CommandAction{

	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws Throwable {

		int page = 0;                                            // 기본 페이지번호를 0으로 설정하고
		 
        if(request.getParameter("page") != null){     // 넘어온 파라미터가 있다면 
 
            page = Integer.parseInt(request.getParameter("page"));  
 
        }                                // 해당 파라미터를 int형으로 캐스팅후 변수에 대입합니다.
        
		ArrayList<Board> articleList = BoardDao.getInstance().getArticleList(page);
		
		request.setAttribute("articleList",articleList);
		request.setAttribute("page", page);
		
		return "list.jsp";
	}

}
