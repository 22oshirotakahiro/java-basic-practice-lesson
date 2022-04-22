<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String[] month = { "１月", "２月", "３月"};
String[] productClass = {"食品", "飲料"};
String sumTitle = "合計";

int[][] amount = {
		{ 352000, 442000, 520000 },
		{ 278000, 342600, 380500 },
};

int[] sumProductAmount = {
		amount[0][0] + amount[0][1] + amount[0][2],
		amount[1][0] + amount[1][1] + amount[1][2]
};

int[] sumMonthAmount = {
		amount[0][0] + amount[1][0],
		amount[0][1] + amount[1][1],
		amount[0][2] + amount[1][2]
};

int total = (sumProductAmount[0] + sumProductAmount[1] + sumMonthAmount[0] + sumMonthAmount[1] + sumMonthAmount[2]);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table style = "border : solid;">
		<tr>
			<th></th>
			<th><%
			out.println(month[0]);
			%></th>
			<th><%
			out.println(month[1]);
			%></th>
			<th><%
			out.println(month[2]);
			%></th>
			<th><%
			out.println(sumTitle);
			%></th>
		</tr>
		<tr>
			<td><%
			out.println(productClass[0]);
			%></td>
			<td><%
			out.println(amount[0][0]);
			%></td>
			<td><%
			out.println(amount[0][1]);
			%></td>
			<td><%
			out.println(amount[0][2]);
			%></td>
			<td><%
			out.println(sumProductAmount[0]);
			%></td>
		</tr>
		<tr>
			<td><%
			out.println(productClass[1]);
			%></td>
			<td><%
			out.println(amount[1][0]);
			%></td>
			<td><%
			out.println(amount[1][1]);
			%></td>
			<td><%
			out.println(amount[1][2]);
			%></td>
			<td><%
			out.println(sumProductAmount[1]);
			%></td>
		</tr>
		<tr>
			<td><%
			out.println(sumTitle);
			%></td>
			<td><%
			out.println(sumMonthAmount[0]);
			%></td>
			<td><%
			out.println(sumMonthAmount[1]);
			%></td>
			<td><%
			out.println(sumMonthAmount[2]);
			%></td>
			<td><%
			out.println(total);
			%></td>
		</tr>	
	</table>
</body>
</html>