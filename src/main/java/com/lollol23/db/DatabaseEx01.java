package com.lollol23.db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lollol23.common.MysqlService;

@WebServlet("/db/ex01")
public class DatabaseEx01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest  request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
//		MysqlService mysqlService = new MysqlService();
//		mysqlService.connect();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		//String insertQuery = "INSERT INTO";
		
		//int count = mysqlService.update(insertQuery);
		
		String selectQuery = "SELECT * FROM used_goods";
		ResultSet result = mysqlService.select(selectQuery);
		
		try {
			while(result.next()) {
				out.println(result.getInt("id"));
				out.println(result.getString("title"));
				out.println(result.getInt("price") + "<br>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			mysqlService.disconnect();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
