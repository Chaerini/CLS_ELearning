<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="obj" scope="page" class="cls_elearning.LoginBean"/>
<jsp:useBean id="am" scope="application" class="cls_elearning.AddrManager"/>
<jsp:setProperty name="obj" property="*"/>
<%
	am.add(obj);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet"> <!-- font -->
<style>
* {font-family:'Jua', sans-serif;}
</style>
</head>
<script>
	function chkSubmit() {
		frm = document.forms["frm"];
		
		var name = frm["name"].value.trim();
		var subject = frm["subject"].value.trim();
		
		if(name == "") {
			alert("작성자는 반드시 작성해야합니다.");
			frm["name"].focus();
			return false;
		}
		
		if(subject == "") {
			alert("제목은 반드시 작성해야합니다.");
			frm["subject"].focus();
			return false;
		}
		
		return true;
		
	}
</script>
<body>

<!-- 메뉴 -->
<nav>
<h1>MENU</h1>
<ul class="menu">
<li style="list-style:none;"><a href=#login><a href="교수소개.jsp">교수 소개</a></a></li>
<li style="list-style:none;"><a href=#login><a href="강좌.jsp">강좌</a></li>
<li style="list-style:none;"><a href=#login><a href="QA.jsp">Q&A</a></li>
<li style="list-style:none;"><a href=#login><a href="공지사항.jsp">공지사항</a></li>

<li class="address" style="list-style:none;"><img src="image/주소.png" width="20" height="20"> CLS e-learning </li>
<li class="tel" style="list-style:none;"><img src="image/전화.png" width="20" height="20"> 010-1234-1234</li>

</ul>
</nav>
<style>
nav{
width:400px;
background-color:#eee;
border-right:1px solid #ddd;
position:fixed;
height:100%;
}
h1{font-size:30px; padding:40px;}
.menu{}
.menu li{}

.menu li a{
height:30px;
line-height:30px;
display:block;
padding:0 20px;
font-size:20px;
color:#555;
}
.menu li a:hover{background-color:yellowgreen; color:white;}

.header{position:absolute;left:500px;top:30px;}

.hello{position:absolute;right:120px;top:80px;font-size:20px;}

.hr{position:absolute;right:100px;top:150px;border:0;width:1120px;height:5px;px;background-color:#FFC19E;}

.address{position:absolute;bottom:125px;}

.tel{position:absolute;bottom:100px;}

.section1{position:absolute;right:100px;top:150px;}
</style>

<!-- 헤더 -->
<header>
<a href="login_form2.html" class="header"> <img src="image/logo.PNG" width=280 height=110></a>
<hr class="hr">
</header>

<br><br><br><br><br><br>
<div align="middle">
<br>
<br>
<br>
<br>
	
	<h2>Q&A</h2>
	<p><a href="Q&Alist.jsp"  class="btn btn-info">Q&A 게시판 목록</a></p>
	<form name = "frm" action="writeOk.jsp" method="post" onsubmit="return chkSubmit()">
	
	<div class="container">
	<table>
	<tr>
	  <th class="active">작성자</th>
	  <td><input type="text" name="name" /></td>	
	</tr>	
	<tr>
	  <th class="active">제목</th>
	  <td><input type="text" name = "subject" size="30" maxlength="100" required class="form-control"></td> 
	</tr>	
	<tr>
	  <th class="active">내용</th>
	  <td><textarea name="content" rows="5" cols="30" class="form-control"></textarea></td>
	</tr>	
	  <td colspan="2"  align="center">
		<input type="submit" value="등록">
		<input type="reset" value="취소">		
	  </td>
	</tr>
	</table>
</div>
</form>

</body>
</html>