<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<style>


  
li{list-style:none;
 margin-left:0px;
 display: inline-block;
  font-size:20px;
  color:black;

 }

a{text-decoration: none; color:black;  width:100px;text-align:center;}

.b{
	margin:0; border:solid 1px black;padding : 10px 20px;
}


.b:visited {
    color: gray;
}
.b:hover {
    color: #333;
}
  transform: translate(0, 0);
}
 

header{

 
  position:fixed;
  top: 0px;
  width:100%;
 
  margin: 0 auto;
}

}.
footer{  background-color:#8FBC8F ;
		position:fixed;
		bottom:10px;
		 width:100%;
		 height:20px;
		 margin:0 auto;
		padding:0;
}
body{
background-image:url("/shopping/book.jpg"); 
background-repeat:,repeat;
background:cover;
width: 100% auto;}

</style>
</head>

<body>
<header>
<ul>
</ul>

<ul style="text-align:center ;top:5px;  margin:0;er;position:relative;">

<li><a style="margin:0; border:solid 1px black;padding : 2px 20px;font-weight: bold;
" href ="/shopping/registration.jsp" >新規会員登録</a></li>

<li><a style="margin:0; border:solid 1px black;padding : 2px 20px;font-weight: bold;
" href ="/shopping/LogIn.jsp">ログイン</a></li>

<li><a  style="margin:0; border:solid 1px black;padding : 2px 20px;font-weight: bold;
" href="/shopping/CartServlet?action=show">カートを見る</a></li>
<br>

<ul style="position:absolute; top:35px;margin:0;; text-align:center; background-color:white; height:60px;width:100%">
<li>
<a style="position:absolute; top:18px ;left:80px; border-bottom:solid 3px 	#669933;color:black ;font-size:25px; padding-bottom:7px ;" href="/shopping/ShowItemServlet?action=top ">ようこそ!</a>
</li>
<li style=" position:relative;top:15px;">
<c:forEach items="${categories}" var="category">
<a style="border-bottom:solid 1px black;padding : 4px 20px;font-weight: bold; "href ="/shopping/ShowItemServlet?action=list&code=${category.code }">${category.name}</a>
</c:forEach>
</li>
<li style=" position:relative;top:15px; left:20px;">
<form action="/shopping/SerchServlet" method="get">
<input type="text" size=20 placeholder="キーワードを検索" name="serch">
<input font-weight: bold; type="submit"  value="検索" class="button1">
<input type="hidden" name="action" value="serch">
</form>
</li>
</ul>
<li><h1 style="position:absolute; top:0px; left:0;color:white; background-color:#669933; width:95px ;height:90px; padding:0; ">try&<br>error</1h></li>


</header>
</body>

<footer >

</footer>
</html>