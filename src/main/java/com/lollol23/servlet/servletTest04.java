package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test04")
public class servletTest04 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>servlet.test04</title></head><body><ul>");
		for(int i = 1 ; i < 31; i++) {
			out.println("<li>" + i + "번째리스트</li>");
		}
		out.print("</ul></body></html");
	}
	
}
