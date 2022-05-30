<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>新規会員登録</title>
<link rel="stylesheet" href="styleCart.css" type="text/css">
</head>
<body>
<jsp:include page="/menu2.jsp" />

<div  style="position:relative; top:100px;">
<h3 >会員情報</h3>
<form action="/shopping/RegistrationServlet?action=registration" method = "post">
お名前:<input type="text" name ="name" size=20  placeholder="※必須"><br>
住所:<input type="text" name ="address"size=40  placeholder="※必須	"><br>
電話番号:<input type="text" name ="tel" size=20  placeholder="※必須"><br>
e-mail:<input type="text" name ="email" size=20  placeholder="※必須"><br>
パスワード:<input type="text" name ="password" size=20 placeholder="※必須"><br>
<h4 >
<input type="submit"  value="登録" class="button1">
</h4>
</form>
</div>

</body>
</html>