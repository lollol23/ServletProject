package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class servletTest03 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>고양이가 야옹해</title></head><body>");
		out.print("<h1><stong>[단독] 고양이가 야옹해</strong></h1>");
		out.println();
		out.print("기사 입력시간 : 2021/03/27 06:07:04");
		out.print("<hr>");
		out.print("끝</body></html>");
		
	}
}
