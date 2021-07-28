<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 시간 확인</title>
</head>
<body>
	<%
		Date now = new Date();
		SimpleDateFormat formatHour = new SimpleDateFormat("hh시 mm분 ss초");
		SimpleDateFormat formatYear = new SimpleDateFormat("yyyy년 MM월 dd일");

		String s = "";
		if(request.getParameter("type").equals("hour")) {
			s = "현재 시간" + formatHour.format(now);
		} else {
			s = "현재 날짜" + formatYear.format(now);
		}
	%>
	<h1><%=s %></h1>
	
</body>
</html>