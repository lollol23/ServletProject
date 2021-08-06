package com.lollol23.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	private static MysqlService mysqlService = null;
	
	
	private String url;
	private String userId;
	private String password;
	
	//접속 관리 객체
	private Connection connection;
	private Statement statement;
	
	public MysqlService() {
		this.url = "jdbc:mysql://localhost:3306/lollol23";
		this.userId = "root";
		this.password = "464673";
	}
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	public void connect() {
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			this.connection = DriverManager.getConnection(this.url, this.userId, this.password);
			this.statement = this.connection.createStatement();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
	//쿼리 수행메소드
	public int update(String query) {
		int count = 0;
		try {
			count = this.statement.executeUpdate(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return count;
	}
	
	//select query 수행 메소드
	public ResultSet select(String query) {
		ResultSet result = null;
		try {
			result = this.statement.executeQuery(query);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return result;
	}
	
	//데이터베이스 연결끊기
	public void disconnect( ) throws SQLException {
		this.statement.close();
        this.connection.close();
	}
}
