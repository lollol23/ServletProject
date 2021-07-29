<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String heightS = request.getParameter("height");
		String weightS = request.getParameter("weight");
		
		int height = Integer.parseInt(heightS);
		int weight = Integer.parseInt(weightS);
		
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		
		String state = "";
		if(bmi <= 20) {
			state = "저체중";
		} else if(bmi <=25) {
			state = "정상";
		} else if(bmi <= 30) {
			state = "과체중";
		} else {
			state = "비만";
		}
	%>
	<h1>BMI 측정 결과</h1>
	<h2>당신은 <%=state %> 입니다.</h2>
	BMI 수치:<%=bmi %>
</body>
</html>