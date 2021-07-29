<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사칙연산 결과</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("number1"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		String calculate = request.getParameter("what");
		double result = 0;
		if(calculate.equals("sum")) {
			result = num1 + num2;
		} else if(calculate.equals("sub")) {
			result = num1 - num2;
		} else if(calculate.equals("mul")) {
			result = num1 * num2;
		} else {
			result = (double)num1 / num2;
		}
	%>
	<h2>계산 결과</h2>
	<h1><%=num1 %><%=calculate %><%=num2 %>=<%=result %></h1>
</body>
</html>