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

@WebServlet("/db/test01")
public class DatabaseTest01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String InsertQuery = "INSERT INTO `real_estate`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES\r\n"
				+ "(3, `헤라펠리스 101동 5305호`, 350, `매매`, 1500000, null, now(), now());";
		mysqlService.update(InsertQuery);
		
		String SelectQuery = "SELECT * FROM real_estate ORDER BY id DESC LIMIT 10";
		ResultSet result = mysqlService.select(SelectQuery);
		
		try {
			while(result.next()) {
				out.println("매물주소 : " + result.getString("address") + " 면적 : " + result.getInt("area") + " 타입 : " + result.getString("type") + "<br>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
