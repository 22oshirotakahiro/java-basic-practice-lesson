<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    // ※必要な処理を実装してください
request.setCharacterEncoding("UTF-8");
    // 入力値取得
String name = request.getParameter("name");

String Age = request.getParameter("age");
int age = Integer.parseInt(Age);

String bloodType = request.getParameter("bloodType");

    // ロボットからの返信用メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3</title>
</head>
<body>
	<h1>Java基礎 - 演習問題3</h1>

	<h2>ロボットからの返信</h2>
	<div>

		<p>こんにちは、
		<%if (name.isEmpty()) {
				out.println("名無しさん!");
			} else if (name.equals("ロボット")) {
				out.println("ロボットさん！私と同じ名前ですね！");
			} else {
				out.println(name + "さん！");
			}
		%></p>
		<p>
		<%
		if (age == 20) {
			out.println("私と同い年ですね！");
		} else if (age > 20) {
			out.println("私よりも" + (age - 20) + "歳年上ですね！");
			
		} else {
			out.println("私よりも" + (20 - age) + "歳年下ですね！");
			
		}
		%></p>
		<p><%
		switch (bloodType) {
		case "typeA":
			out.println("A型か...");
			break;
		case "typeB":
			out.println("B型か...");
			break;
		case "typeAB":
			out.println("AB型か...");
			break;
		case "typeO":
			out.println("O型最強！");
			break;
		default:
			break;
		}
		%></p>
	</div>
	<a href="javaBasic3_input.jsp">戻る</a>
</body>
</html>