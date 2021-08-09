package com.lollol23.db;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lollol23.common.MysqlService;

@WebServlet("/db/ex02_insert")
public class DatabaseEx02insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String introduce = request.getParameter("introduce");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO\r\n"
				+ "`new_user` (`name`, `yyyymmdd`, `email`, `introduce`)\r\n"
				+ "VALUES ('" + name + "', '" + birth + "', '" + email + "', '" + introduce + "');";
		
		int count = mysqlService.update(insertQuery);
		out.println("입력성공" + count);
	}
}
