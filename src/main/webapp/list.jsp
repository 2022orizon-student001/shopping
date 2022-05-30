<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styleCart.css" type="text/css">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品一覧</title>
<link rel="stylesheet" href="style.css" type="text/css">

</head>
<body>

<jsp:include page="/menu2.jsp" />

<h3 style="position:relative;top:120px;">商品一覧</h3>

<c:forEach items="${items }" var="item">
	<form action="/shopping/CartServlet?action=add" method="post">
		<div style="position:relative;top:100px;">
		<input type= "hidden" name = "item_code" value="${item.code}">
		商品番号：<b>${item.code}</b><br> 
		商品名：<b>${item.name}</b><br>
		価格（税込）：<b>${item.price}円</b><br>
		個数：
		<select name ="quantity">
		<option value="1">1
		<option value="2">2
		<option value="3">3
		<option value="4">4
		<option value="5">5
		</select>
		個<br><br>
		<input type ="submit" value="カートに追加" class=button1></div>
	</form>
</c:forEach>

</body>
</html>