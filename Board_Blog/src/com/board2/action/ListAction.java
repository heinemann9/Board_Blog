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

		int page = 0;                                            // �⺻ ��������ȣ�� 0���� �����ϰ�
		 
        if(request.getParameter("page") != null){     // �Ѿ�� �Ķ���Ͱ� �ִٸ� 
 
            page = Integer.parseInt(request.getParameter("page"));  
 
        }                                // �ش� �Ķ���͸� int������ ĳ������ ������ �����մϴ�.
        
		ArrayList<Board> articleList = BoardDao.getInstance().getArticleList(page);
		
		request.setAttribute("articleList",articleList);
		request.setAttribute("page", page);
		
		return "list.jsp";
	}

}
