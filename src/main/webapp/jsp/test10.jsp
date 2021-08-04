<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력 만들기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM");
		calendar.set(Calendar.YEAR, 2021);
		calendar.set(Calendar.MONTH, 7);
		calendar.set(Calendar.DATE, 1);
		out.println(formatter.format(calendar.getTime()));
		int startDay = calendar.get(Calendar.DAY_OF_WEEK);
		int maxDate = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		out.println(startDay + " " + maxDate);
		int monthWeek = (startDay + maxDate) / 7;
	%>
	<div class="container">
		<h1 class=text-center><%=formatter.format(calendar.getTime()) %></h1>
		<table class="table text-center">
			<tr>
				<th class="text-danger">일</th>
				<th>월</th>
				<th>화</th>
				<th>수</th>
				<th>목</th>
				<th>금</th>
				<th>토</th>
			</tr>
			<%
				for(int i = 0; i < monthWeek + 1; i++) {
					%>
					<tr>
					<%
					for(int j = 2 - startDay + (7 * i); j < 9 - startDay + (7 * i); j++) {
						if(j < 1 || j > maxDate){
							String blank = "";
						%>
						<td><%=blank %></td>
						<%
							continue;
						}
						%>
						<td><%=j %></td>
						<%
					}
					%>
					</tr>
					<%
				}
			%>
		</table>
	</div>
</body>
</html>