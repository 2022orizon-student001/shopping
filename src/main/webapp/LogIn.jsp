<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="styleCart.css" type="text/css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン・</title>
</head>
<body>

<jsp:include page="/menu2.jsp" />

<div class="login">
<form action="/shopping/RegistrationServlet?action=login" method="post">
お名前:<input type="text" name="name"><br>
パスワード:<input type="text" name="password"><br>
<input type="submit" value="ログイン" class=button1>
</div>
</form>

</body>
</html>