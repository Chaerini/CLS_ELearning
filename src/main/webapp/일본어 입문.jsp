<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="obj" scope="page" class="cls_elearning.LoginBean"/>
<jsp:setProperty name="obj" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일본어 입문</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet"> <!-- font -->
<style>
* {font-family:'Jua', sans-serif;}
</style>
</head>
<body>

<!-- 메뉴 -->
<nav>
<h1>MENU</h1>
<ul class="menu">
<li style="list-style:none;"><a href=#login><a href="교수소개.jsp">교수 소개</a></a></li>
<li style="list-style:none;"><a href=#login><a href="강좌.jsp">강좌</a></li>
<li style="list-style:none;"><a href=#login><a href="Q&A.jsp">Q&A</a></li>
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
<h2>일본어 입문 1강 - 히라가나 공부</h2><hr><br><br><br>
<video src="media/일본어 입문 1강.MP4" width="750" height="400" autoplay controls>


</video>