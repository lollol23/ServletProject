package com.lollol23.db;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lollol23.common.MysqlService;

@WebServlet("/db/test02_insert")
public class DatabaseTest02insert extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String insertQuery = "INSERT INTO `favorites`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUES ('" + name + "', '" + url + "', now(), now());";
		
		mysqlService.update(insertQuery);
		
		response.sendRedirect("/db/test02.jsp");
	}
}
