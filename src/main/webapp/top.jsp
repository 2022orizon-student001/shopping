<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
<style>

.top{
	margin:0 auto;
	display:flex;
	color:black;
	font-size: 50px;
	text-align: center;
	background-color: white; opacity:0.8;
	position:relative;top:100px; 
	padding:50px 100px 50px;
}

</style>
</head>
<body>
	<jsp:include page="/menu2.jsp"/>
	
	<p class="top" style="width:50%">ようこそ！ <br>サンプルショッピングへ</p>
	<a 	class="top"  style="width:40%;top:150px;"
	 href="/shopping/registration.jsp">会員登録で<br>お得にお買い物!</a>
</body>
</html>