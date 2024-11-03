<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="obj" scope="page" class="cls_elearning.LoginBean"/>
<jsp:setProperty name="obj" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 1번</title>
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

<h2>CLS E-LEARNING 이용 방법</h2>


- 로그인 후 이용 가능<p>
- 가운데 상단에 CLS-ELEARNING을 클릭하면 메인화면으로 이동하실 수 있습니다. 
- 교수 소개 : 이미지 클릭 시 열람 가능<p>
- 강좌 : 강의는 매주 한 개씩 올라옵니다.<p>
- Q&A : 글쓰기를 통해 이용하실 수 있습니다.<p>
		급한 연락은 왼쪽 하단에 있는 010-1234-1234로 전화 부탁드립니다.<p>
- 공지사항 : 업데이트 내용 및 강의 출처에 대한 내용 게시<p>

<h3><a href="공지사항.jsp">뒤로가기</a></h3>
