<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%
	Connection conn = null;
	Statement  stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "C##WEB01";
	String pw = "1234";
	
	String sql_select = "SELECT * FROM test_write ORDER BY wr_uid DESC";
%>   
<jsp:useBean id="obj" scope="page" class="cls_elearning.LoginBean"/>
<jsp:useBean id="am" scope="application" class="cls_elearning.AddrManager"/>
<jsp:setProperty name="obj" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Q&A 게시판 목록</title>
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
	<h3>Q&A 게시판 목록</h3>
	<p><a href="Q&A.jsp"><h2>글쓰기</h2></a></p>
	<style>
	table,th,td{
	border : 1px solid #bcbcbc;
	}
	table{
	width:600px;
	}
	</style>
	<%
	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,uid, pw);
		pstmt = conn.prepareStatement(sql_select);
		rs = pstmt.executeQuery();
%>
	<table border=1>
	
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
	</tr>

<%
	while(rs.next()) {
		int wr_uid = rs.getInt("wr_uid");
		
		String subject = rs.getString("wr_subject");
		String name = rs.getString("wr_name");
		
		out.println("<tr>");
		out.println("<td>"+ wr_uid +"</td>");
		out.println("<td><a href = 'Q&Aview.jsp?wr_uid=" +wr_uid+ "'>"+ subject +"</a></td>");
		out.println("<td>"+ name +"</td>");
		out.println("</tr>");
		
	}

%>
</table>
<br>
	<%

	}catch(Exception e) {
		e.printStackTrace();
	}finally{
		try{
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
%>
</div>
</body>
</html>