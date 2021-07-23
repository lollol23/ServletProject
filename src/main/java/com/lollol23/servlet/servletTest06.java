package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test06")
public class servletTest06 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("application/json");
		response.setCharacterEncoding("utf-8");
		
		int number1 = Integer.parseInt(request.getParameter("number1"));
		int number2 = Integer.parseInt(request.getParameter("number2"));
		
		PrintWriter out = response.getWriter();
		
		//out.println(number1 + number2);
		out.println("{\"addtion\":" + (number1 + number2) + ", \"subtraction\":" + (number1 - number2) + ", \"multiplication\":" + (number1 * number2) + ", \"division\":" + (number1 / number2) + "}");
	}
}
