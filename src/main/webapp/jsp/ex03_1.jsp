<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post method 폼태그</title>
</head>
<body>
	<form method="post" action="/jsp/ex03_2.jsp">
		<label>별명은무엇인가요?</label><input type="text" name="nickname"><br>
		<label>취미는무엇인가요?</label><input type="text" name="hobby"><br>
		강아지 또는 고양이 <br>
		<label>강아지<input type="radio" name="animal" value="dog"></label>
		<label>고양이<input type="radio" name="animal" value="cat"></label><br>
		다음중 선호하는 것을 고르세요<br>
		<label>민트초코<input type="checkbox" name="food" value="mincho"></label>
		<label>하와이안피자<input type="checkbox" name="food" value="pizza"></label>
		<label>번데기<input type="checkbox" name="food" value="puppa"></label><br>
		좋아하는 과일을 고르세요<br>
		<select name="fruit">
			<option value="사과">사과</option>
			<option value="바나나">바나나</option>
			<option value="복숭아">복숭아</option>
			<option value="딸기">딸기</option>
		</select>
		<button type="submit">제출</button>
	</form>
</body>
</html>