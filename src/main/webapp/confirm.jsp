<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css" type="text/css">
<style>
body {
	text-align: center;
}

table {
	position: absolute;
	left: 00px;
	background-color: white;
	opacity: 0, 5;
	border: 1px solid black;
	border-collapse: collapse;
	width: 400;
	height: 50%;
	"
}

table td {
	padding: 10px;
	30
	px;
}
</style>
</head>
<body>

	<jsp:include page="/menu2.jsp" /><br>
	<h3>下記の内容で注文を行いますか?</h3>
	<h style="background-color: rgba(255,255,255,0.8);/; padding:5px 60;width:100px;">ご注文商品
	</h3>

	<c:if test="${not empty cart.items}">
		<table border="1">
			<tr>
				<td>商品番号</td>
				<td>商品名</td>
				<td>単価（税込）</td>
				<td>個数</td>
				<td>小計</td>
				<td>割引後の小計</td>
			</tr>

			<c:forEach items="${cart.items}" var="item">
				<tr>
					<td align="center">${item.code}</td>
					<td align="center">${item.name}</td>
					<td align="right">${item.price}円</td>
					<td align="right">${item.quantity}</td>
					<td align="right">${item.price * item.quantity}円</td>
					<td align="right">${item.price * item.quantity * 0.8}円</td>
				</tr>
			</c:forEach>
			<tr>
				<td align="right" colspan="6">総計:${cart.total * 0.8}円</td>
			</tr>
		</table>

		<h3 style="background-color: rgba(255,255,255,0.8); padding: 5px 60; width: 100px;">お客様情報</h3>

		<form action="/shopping/OrderServlet?action=order" method="post">
			<table
				style="background-color: white; border: 1px solid black; border-collapse: collapse; width: 90px;">
				<tr>
					<td>お名前</td>
					<td>${customer.name}</td>
				</tr>
				<tr>
					<td>住所</td>
					<td>${customer.address}</td>
				</tr>
				<tr>
					<td>電話番号</td>
					<td>${customer.tel}</td>
				</tr>
				<tr>
					<td>e-mail</td>
					<td>${customer.email}</td>
				</tr>
			</table>
			<br>
			<div style="position: relative;">
				<input type="submit" value="この内容で注文" class=button>
		</form>
		</div>
	</c:if>
</body>
</html>