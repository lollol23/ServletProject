<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		out.println(today);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		out.println(formatter.format(today.getTime()) + "<br>");
		
		//날짜연산
		Calendar calendar = Calendar.getInstance();
		//132일전으로 돌아가자
		calendar.add(Calendar.DATE, -132);
		out.println(formatter.format(calendar.getTime()));
		//250일 이후
		calendar.add(Calendar.DATE, 250);
		//3개월 이후
		calendar.add(Calendar.MONTH, 3);
		out.println(formatter.format(calendar.getTime()) + "<br>");
		//두 날짜를 비교
		//기준이되는 날짜 와 파라미터 비교
		//기준이되는 날짜 가 더작을때 -1
		//기준이되는 날짜 가 더 클때 1
		//두날짜 같을때 0
		int result = today.compareTo(calendar);
		out.println(result);
		if(result > 0) {
			out.println("오늘이 더큼");
		} else if(result < 0){
			out.println("오늘이 더작음");
		} else {
			out.println("같음");
		}
	%>
	
</body>
</html>