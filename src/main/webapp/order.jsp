<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
<link rel="stylesheet" href="styleCart.css" type="text/css">
</head>
<body>
<img src="/shopping/22556139">
<jsp:include page="/menu2.jsp" /><br>

<div style="position:relative; top:100px;">
<h1 style="font-size:30px;text-align:center;">ご注文ありがとうございました。</h1>
<p style="font-size:30px; text-align:center;">お客様の注文番号は<br></p><p style="color:red;font-size:40px;">${orderNumber}</p>
<p style="font-size:30px; text-align:center;">になります。</p>
</div>

</body>
</html>