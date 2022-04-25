<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
    // ※必要な処理を実装してください

    // 入力値取得
String Num1;
String Operator;
String Num2;

Num1 = request.getParameter("num1");
Operator = request.getParameter("operator");
Num2 = request.getParameter("num2");

int number1;
int number2;
int answer = 0;
String operator = null;
if (Num1 == null || Num2 == null) {
	number1 = 0;
	number2 = 0;
}else if(Num1.isEmpty() || Num2.isEmpty()){
	number1 = 0;
	number2 = 0;
}else {
	number1 = Integer.parseInt(Num1);
	number2 = Integer.parseInt(Num2);
	switch (Operator) {
	case "add":
		answer = number1 + number2;
		operator = "＋";
		break;
	case "sub":
		answer = number1 - number2;
		operator = "―";
		break;
	case "mul":
		answer = number1 * number2;
		operator = "×";
		break;
	case "div":
		answer = number1 / number2;
		operator = "÷";
		break;
	}
}


String inputStr = "数値を入力してください";
if (Num1.isEmpty() && Num2.isEmpty()) {
	inputStr = "数値が両方とも未入力です";
} else if (Num1.isEmpty() || Num2.isEmpty()) {
	inputStr = "数値を入力してください";
} else {
	inputStr = number1  + operator + number2 + "＝" + answer;
}
    // 表示するメッセージ用の変数

    // メッセージ作成

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java基礎_演習問題3(発展)</title>
<style>
.number {
	width: 80px;
}
</style>
</head>
<body>

	<h1>Java基礎 - 演習問題3(発展)</h1>
	<h2>四則演算</h2>

	<p>
	<input type="text" value="	<%
		out.println(inputStr);
	%>">

	</p>

	<form action="javaBasicDev3.jsp" method="post">
		<input type="number" min="1" max="999999" class="number" name="num1">
		<select name="operator">
			<option value="add">＋</option>
			<option value="sub">ー</option>
			<option value="mul">×</option>
			<option value="div">÷</option>
		</select> <input type="number" min="1" max="999999" class="number" name="num2">
		<button type="submit">計算</button>
	</form>
</body>
</html>