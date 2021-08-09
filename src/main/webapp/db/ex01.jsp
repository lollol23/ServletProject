<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.lollol23.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 리스트</title>
</head>
<body>
<%
	MysqlService mysqlService =  MysqlService.getInstance();
	mysqlService.connect();
	
	//new_user 테이블 출력
	String query = "SELECT * FROM `new_user`";
	ResultSet result = mysqlService.select("query");

%>


<!-- new_user 모든값 테이블 -->
<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>생년월일</th>
			<th>자기소개</th>
			<th>이메일</th>
		</tr>
	</thead>
	<tbody>
	<%
		while(result.next()) {
			
		
	%>
		<tr>
			<td><%=result.getInt("id") %></td>
			<td><%=result.getString("name") %></td>
			<td><%=result.getString("yyyymmdd") %></td>
			<td><%=result.getString("introduce") %></td>
			<td><%=result.getString("email") %></td>
		</tr>
		<%} %>
	</tbody>
</table>
</body>
</html>