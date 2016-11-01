package com.board2.dao;

import com.board2.db.sqlconfig.IBatisDBConnector;
import com.ibatis.sqlmap.client.SqlMapClient;

public class CommonDao {
	private SqlMapClient myDB;
	
	public void SetDB(){
		myDB = IBatisDBConnector.getSqlMapInstance();
	}
	
	protected SqlMapClient GetDB(){
		return myDB;
	}
}
