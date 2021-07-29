<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이변환</title>
</head>
<body>
	<%
		double length = Double.parseDouble(request.getParameter("length"));
		String[] typeArray = request.getParameterValues("type");
		String result = "";
		for(int i = 0; i < typeArray.length; i++) {
			if(typeArray[i].equals("inch")) {
				result += (length / 2.54 + "in\n");
			} else if(typeArray[i].equals("yard")) {
				result += (length / 91.44 + "yd\n");
			} else if(typeArray[i].equals("feet")) {
				result += (length / 30.48 + "ft\n");
			} else {
				result += (length / 100 + "m\n");
			}
		}
	%>
	<h1>변환 결과</h1>
	<h2><%=length %>cm</h2>
	<hr>
	<h2><%=result %></h2>
</body>
</html>