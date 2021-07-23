package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test05")
public class servletTest05 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		int base = Integer.parseInt(request.getParameter("base"));
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>구구단</title><head><body><ul>");
		for(int i = 1; i <10; i++) {
			out.println("<li>" + base + " X " + i + " = " + base * i + "</li>");
		}
		out.println("</ul></body></html>");
	}
	
}
