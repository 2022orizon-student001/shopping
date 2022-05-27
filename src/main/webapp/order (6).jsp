<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
<style>
body{background-color:#deb887;
background:cover;}

font-size:30px;s
text-align:center;}

</style>
</head>
<body>
<img src="/shopping/22556139">
<jsp:include page="/menu.jsp" /><br>

<div>
<h1 style="padding:100px; font-size:30px;text-align:center;">ご注文ありがとうございました。</h1>

<h2 style="font-size:30px; text-align:center;position:relactive; top:z0px;">お客様の注文番号は<br><font color="red" size="30px">${orderNumber}<br></font></h2>
<p style="font-size:30px; text-align:center;">になります。</p>
</div>

</body>
</html>