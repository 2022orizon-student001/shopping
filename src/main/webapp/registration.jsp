<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>新規会員登録</title>
<style>
table{	
margin: 20px;
  width: 75%;
  border-collapse:collapse;
font-family:"MS Pゴシック",sans-serif;
font-size: 15;
table-layout: fixed;
 background-color: rgba(255,255,255,0.8);/*表の枠線*/
 }

 
/*枠線の中の色*/
}
table td{
  text-align: center;
  border-left: 1px solid #000000;
  border-bottom: 1px solid #000000;
  border-top:1px solid #000000;

  width: 25%;
  padding: 10px 5px 10px;
  
  position: absolute; /* 今の位置を基準 */
top: 80px; /* 上から10px */
left: 20px; /* 左から20px */

/*表の太さとか位置とか*/
}

}
</style>
</head>
<body>
<jsp:include page="/menu2.jsp" />


<form action="/shopping/RegistrationServlet?action=registration" method = "post">
<table border="1">
<tr>
<td>お名前</td><td><input type="text" name ="name"></tr>
<tr><td>住所</td><td><input type="text" name ="address"></td></tr>
<tr><td>電話番号</td><td><input type="text" name ="tel"></td></tr>
<tr><td>e-mail</td><td><input type="text" name ="email"></td></tr>
<tr><td>パスワード</td><td><input type="text" name ="password"></td></tr>
</table>
<div style="position:relative;">
<input type="submit" value="登録">
</div>
</form>

</body>
</html>