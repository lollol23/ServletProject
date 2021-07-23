package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//http://localhostt:8080/servlet/ex03?user_id=lollol23&name=lol
@WebServlet("/servlet/ex03")
public class ServletEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
		
//		out.println("<html><head><title>get 파라미터확인</title></head>");
//		out.println("<body><h3>" + id + " : " + name + " : " + age + "</h3></body><html>");
		
		//?user_id=lollol23&name=lollol&age=25
		//{"user_id":"lollol23", "name":"lollol", "age":25}
		out.println("{\"user_id\":\"" + id + "\", \"name\":\"" + name+ "\", \"age\":" + 25 + "}");
	}

}
