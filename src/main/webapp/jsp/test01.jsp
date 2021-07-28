<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test01</title>
</head>
<body>
	<!-- 1. 점수들의 평균 구하기	-->
	<%
		int[] scores = {80, 90, 100, 95, 80};
		int sum = 0;
		double avg = 0;
		for(int i = 0; i < scores.length; i++) {
			sum += scores[i];
		}
		avg = (double)(sum / scores.length);
	%>
	<b>점수 평균은 <%=avg %> 입니다.</b><br>
	
	<!-- 2. 채점 결과 아래 채점표로 시험점수가 몇점인지 구하세요. -->
	<%
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		int score = 0;
		for(int i = 0; i < scoreList.size(); i++) {
			if(scoreList.get(i).equals("O")) {
				score += (100 / scoreList.size());
			}
		}
	%>
	<b>채점 결과는 <%=score %>점 입니다.</b><br>
	
	<!-- 3. 1부터 n까지의 합계를 구하는 함수
	jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요.
	만든 함수를 이용해서 50까지의 합의 결과를 출력하세요. -->
	<%!
		public int getSum(int n) {
			int sum = 0;
			for(int i = 0; i <= n; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	<% int number = 50;%>
	<b>1에서 <%=number %>까지의 합은 <%=getSum(number) %></b><br>
	
	<!--4. 나이 구하기  -->
	<%
		String birthDay = "20010820";
		int birthYear = Integer.parseInt(birthDay.substring(0, 4));
		int currentYear = 2021;
		int age = currentYear - birthYear + 1;
	%>
	<b><%=birthDay %>의 나이는 <%=age %>살 입니다.</b>
</body>
</html>