<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Shopping!</title>
</head>
<style>


b{
font-size: 20;
     color: #000000;
   
}

 table{	margin: 20;
  width: 75%;
  border-collapse:separate;
  border-spacing: 0;
font-family:"MS Pゴシック",sans-serif;
font-size: 20;
table-layout: fixed;
 position: relative; /* 今の位置を基準 */
top: 10px; /* 上から10px */
left: 20px; /
/*position表の枠線*/
 }


table td{
  background-color: rgba(255,255,255,0.8);
/*枠線の中の色*/
}
table td{
  text-align: center;
  border-left: 1px solid #000000;
  border-bottom: 1px solid #000000;
  border-top:1px solid #000000;

  width: 25%;
  padding: 5px 0px 5px;
  
 \

/*表の太さとか位置とか*/
}




div{margin: 80;
	background-color:rgba(255,255,255,0.8);
	 width: 60%;
	 border: 60;
	
	 
}

.button {
  display:inline-block;
  border-radius:5%;          /* 角丸       */
  font-size:18pt;        /* 文字サイズ */
  text-align:center;      /* 文字位置   */
  cursor:pointer;     /* カーソル   */
  padding:12px 12px;   /* 余白       */
  background:#332245;     /* 背景色     */
  color:#ffffff;     /* 文字色     */
  line-height:1em;         /* 1行の高さ  */
  transition:.3s;         /* なめらか変化 */

  border : 2px solid #ffffff;    /* 枠の指定 */
  
  
	
}

.button:hover {
  
  color         : #000066;     /* 背景色     */
  background    : #ffffff;     /* 文字色     */
}
	
.button1 {
  display:inline-block;
  border-radius:5%;          /* 角丸       */
  font-size:10pt;        /* 文字サイズ */
  text-align:center;      /* 文字位置   */
  cursor:pointer;     /* カーソル   */
  padding:7px 7px;   /* 余白       */
  background:#332245;     /* 背景色     */
  color:#ffffff;     /* 文字色     */
  line-height:1em;         /* 1行の高さ  */
  transition:.3s;         /* なめらか変化 */
  /* 影の設定 */
  border : 2px solid #ffffff;    /* 枠の指定 */
}

.button:hover {

  color         : #000066;     /* 背景色     */
  background    : #ffffff;     /* 文字色     */
}	

.button2 {
  display:inline-block;
  border-radius:5%;          /* 角丸       */
  font-size:18pt;        /* 文字サイズ */
  text-align:center;      /* 文字位置   */
  cursor:pointer;     /* カーソル   */
  padding:12px 12px;   /* 余白       */
  background:#332245;     /* 背景色     */
  color:#ffffff;     /* 文字色     */
  line-height:1em;         /* 1行の高さ  */
  transition:.3s;         /* なめらか変化 */
 
  border : 2px solid #ffffff;    /* 枠の指定 */
  position: relative; /* 今の位置を基準 */
left: 250px; 
top:10px/* 左から20px */
}


.login{
	margin:100;
	width:400px

</style>
<body>
<jsp:include page="/menu2.jsp" /><br>
<h3>現在のカートの中身</h3>

<c:if test="${empty cart.items}">
現在、カートは空です。
</c:if>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品番号</td><td>商品名</td><td>単価（税込）</td><td>個数</td><td>小計</td><td>削除</td></tr>

<c:forEach items="${cart.items}" var="item">
<tr>
	<td align="center">${item.code}</td>
	<td align="center">${item.name}</td>
	<td align="right">${item.price}</td>
	<td align="right">${item.quantity}</td>
	<td align="right">${item.price * item.quantity}円</td>
<td>

<form action="/shopping/CartServlet?action=delete" method="post">
	<input type="hidden" name="item_code" value="${item.code}">
	<input type="submit" value="削除" class=button1>
</form>
</td>
</tr>
</c:forEach>
<tr><td align="right" colspan=6>総計：${cart.total}円</td></tr>
</table>


<div position:relative; top:10px; right:0px;>
<form action="/shopping/OrderServlet?action=input_customer" method="post">
<input type="submit" value="注文する" class=button>
</form>
</c:if>
</div>

</body>
</html>