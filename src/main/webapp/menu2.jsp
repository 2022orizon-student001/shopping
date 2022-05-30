<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>


}

.button1{ 
  border-radius:10%;          
  font-size:15pt;       
  text-align:center;    
  cursor:pointer;    
  padding:5px 5px;   
  background:#332245;     
  color:#ffffff;    
  line-height:1em;       
  transition:.3s;       
  border : 2px solid #ffffff;} 
li {
	list-style: none;
	display: inline-block;
	font-weight: bold; 
}
a{
	text-decoration: none;
	text-align: center;
	 border-left: solid 1px black;
	color:black;
	
	padding: 8px 20px;
	
}
a:link{  background:white;}
a:visited{background: white;}
a:hover{background: #66CC66;}
a:active{background: white;}




body {
	background-image: url("/shopping/book.jpg");
	background-repeat: repeat;
	background: cover;
	margin:0 auto;
}
</style>
</head>

<body>
	<header>
		<ul>
		</ul>

		
		<ul	style="position: fixed; top:0px; left: 0px;z-index:100; margin:0 auto;  background-color: white; height: 100px; width: 100%;text-align: center;">
		
			<li class="a"><a href="/shopping/registration.jsp">新規会員登録</a></li>
			<li class="b"><a href="/shopping/LogIn.jsp">ログイン</a></li>
			<li class="c"><a href="/shopping/CartServlet?action=show">カートを見る</a></li>
			<br><br>
			<li style="background-color:#33CC66; padding:15px 20px 11px 11px; position: fixed; top:0px; left: 0px;z-index:110; font-size:35px;color:white;">
				try&<br>error</li>
			<li class="d"><a style="font-size: 25px;"
				href="/shopping/ShowItemServlet?action=top ">ようこそ!</a></li>
			<li class="e" style="padding-left: 20px;"><c:forEach items="${categories}"
					var="category">
					<a href="/shopping/ShowItemServlet?action=list&code=${category.code }">${category.name}</a>
				</c:forEach></li>
			<li style="position: relative; left: 20px;">
				<form action="/shopping/SerchServlet" method="get">
					<input type="text" size=30 placeholder="何をお探しですか？" name="serch">
					<input type="submit" value="検索" class="button1"> 
					<input type="hidden" name="action" value="serch">
				</form>
			</li>


		</ul>

	</header>
</body>

</html>