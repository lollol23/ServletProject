package com.lollol23.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class servletTest07 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html><head><title>주문하기</title></head><body>");
		if(!(address.contains("서울시"))) {
			out.println("배달 불가 지역입니다.</body></html>");
		} else if(!(card.equals("신한카드"))) {
			out.println("결제 불가 카드 입니다.");
		} else {
			out.println("<strong>" + address + "배달 준비중</strong>");
			out.println("<hr>");
			out.println("결재금액 : " + price + "원");
			out.println("</body></html>");			
		}
		
		
	}
}
