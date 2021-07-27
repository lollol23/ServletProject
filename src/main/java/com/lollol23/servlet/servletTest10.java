package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class servletTest10 extends HttpServlet{
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "lollol23");
	        put("password", "asdf");
	        put("name", "롤롤");
	    }
	};
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String inputId = request.getParameter("inputId");
		String inputPw = request.getParameter("inputPw");
		
		out.println("<html><head><title>로그인</title></head><body>");
		if(!(userMap.get("id").equals(inputId))) {
			out.println("id가 일치하지 않습니다.");
		} else if(!(userMap.get("password").equals(inputPw))) {
			out.println("비밀번호가 일치하지 않습니다.");
		} else {
			out.println("<h1>" + userMap.get("name") + "님 환영합니다.</h1>");
		}
		
		out.println("</body></html>");
		
		
	}
}
