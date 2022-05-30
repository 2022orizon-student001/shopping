<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="styleCart.css" type="text/css">

</head>
<body>

<jsp:include page="/menu2.jsp" /><br>
<div style="position:relative; top:100px; width: 90%;">
<h3>ご注文商品</h3>
<c:if test="${not empty cart.items}">
<table border="1" >

<tr><td>商品番号</td><td>商品名</td><td>単価（税込み）</td><td>個数</td><td>小計</td></tr>
<c:forEach items="${cart.items}" var="item">
<tr>
<td align ="center">${item.code}</td> 
<td align ="center">${item.name}</td> 
<td align ="right">${item.price}円</td> 
<td align ="right">${item.quantity}</td>
<td align ="right">${item.price * item.quantity}円</td>

</tr>
</c:forEach>
<tr><td align ="right" colspan="6">総計:${cart.total}円</td>
</table>
</c:if>
</div>
<div style="position:relative; top:100px;"> 
<h3 >お客様情報を入力してください</h3>
<br>
<form action="/shopping/OrderServlet?action=confirm" method = "post">
お名前:<input type="text" name ="name" size=20  placeholder="※必須"><br>
住所:<input type="text" name ="address"size=40  placeholder="※必須	"><br>
電話番号:<input type="text" name ="tel" size=20  placeholder="※必須"><br>
e-mail:<input type="text" name ="email" size=20  placeholder="※必須"><br>
<h4 >
<input type="submit"  value="登録" class="button1">
</h4>
</form>
</div>


</body>
</html>