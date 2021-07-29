<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI수치</title>
</head>
<body>
	<h1>체격 조건 입력</h1>
	<form method="get" action="/jsp/test03_2.jsp">
		<input type="text" name="height">cm
		<input type="text" name="weight">kg
		<input type="submit" value="계산" href="/jsp/test03_2.jsp">
	</form>
</body>
</html>