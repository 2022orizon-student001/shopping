<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
<style>
p {
	font-size: 50px;
	position: absolute;
	top: 200px;
	text-align: center;
	padding-top: 50px;
	background-color: white;
	height: 200px;
	width: 600px;
	left-margin: 100px;
	text-align: center; 
}
</style>
</head>
<body>
	<jsp:include page="/menu2.jsp" />
	<a style="border-bottom: solid 3px #669933; 
		font-size: 30px; text-align: center; 
		background-color: white;
		 position: absolute; 
		 height: 100px;
		 bottom:600px; 
		 width: 200px;
		  padding: 30px;"
		href="/shopping/registration.jsp">会員登録で<br>もっとお得に！
	</a>
	<p style="border-bottom: solid 3px #669933;">
		ようこそ！ <br> サンプルショッピングへ
	</p>
</body>
</html>