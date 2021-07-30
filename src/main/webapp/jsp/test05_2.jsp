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
	%>
	<h1>변환 결과</h1>
	<h2><%=length %>cm</h2>
	<hr>
	<%
		for(int i = 0; i < typeArray.length; i++) {
			if(typeArray[i].equals("inch")) {
				double inch = length * 0.39;
				%>
				<h3><%=inch %> in<br></h3>
			<%
			} else if(typeArray[i].equals("yard")) {
				double yard = length * 0.010936;
				%>
				<h3><%=yard %> yd<br></h3>
			<%
			} else if(typeArray[i].equals("feet")) {
				double feet = length * 0.032808;
				%>
				<h3><%=feet %> ft<br></h3>
			<%
			} else if(typeArray[i].equals("m")){
				double m = length * 0.01;
				%>
				<h3><%=m %> m<br></h3>
			<%
			}
		}
	%>
	
</body>
</html>