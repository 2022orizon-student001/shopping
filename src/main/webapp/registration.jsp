<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規会員登録</title>
</head>
<body>
<jsp:include page="/menu2.jsp" />

<div class="new">
<form action="/shopping/RegistrationServlet?action=registration" method = "post">
<table border="1">
<tr>
<td>お名前</td><td><input type="text" name ="name"></tr>
<tr><td>住所</td><td><input type="text" name ="address"></td></tr>
<tr><td>電話番号</td><td><input type="text" name ="tel"></td></tr>
<tr><td>e-mail</td><td><input type="text" name ="email"></td></tr>
<tr><td>パスワード</td><td><input type="text" name ="password"></td></tr>
</table>
<input type="submit" value="登録">
</div>
</form>

</body>
</html>