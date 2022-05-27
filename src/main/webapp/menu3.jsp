<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<link rel="stylesheet" href="style.css" type="text/css">

<a href="/shopping/ShowItemServlet?action=top">
<p style="color:white"> ようこそ</p>
</a>
<c:forEach items="${categories}" var="category">
<a href ="/shopping/ShowItemServlet?action=list&code=${category.code}">
<p style="color:white"> ${category.name}</p></a>
</c:forEach>

<a href="/shopping/ShowItemServlet?action=show"><p style="color:white">カートを見る</p></a>
<br>
<form action="/shopping/SerchServlet" method="get">
<input type="text" name="serch">
<input type="submit"  value="検索">
<input type="hidden" name="action" value="serch">
</form>