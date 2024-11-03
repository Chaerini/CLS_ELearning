<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.Date" %>    
<%@ page import = "java.sql.*" %>

<%
	int wr_uid = Integer.parseInt(request.getParameter("wr_uid"));
%>  
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
	
	String sql_select_by_wr_uid = "SELECT * FROM test_write WHERE wr_uid = ?";
	String name = "";
	String subject = "";
	String content = "";

	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,uid, pw);

		
		conn.setAutoCommit(false);
		
		pstmt = conn.prepareStatement(sql_select_by_wr_uid);
		pstmt.setInt(1, wr_uid);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			subject = rs.getString("wr_subject");
			content = rs.getString("wr_content");
			if(content == null) content = "";
			
			name = rs.getString("wr_name");

			
		}else {
%>
			<script>
				alert("해당 글이 삭제되거나 없습니다.");
				history.back();
			</script>



<% 
	return;
		}
	} catch(Exception e){
		e.printStackTrace();
		conn.rollback();
	} finally {
		try{
			if(rs != null) rs.close();
			if(stmt != null) stmt.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<!DOCTYPE html>
<html lang = "ko">
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
<style>
	table,th,td{
	border : 1px solid #bcbcbc;
	}
	table{
	width:600px;
	}
	</style>
	<table border=1>
	<tr>
		<th>제목: <%=subject %></th>
		<th>번호 : <%= wr_uid %><br></th>
		<th>작성자 : <%= name %><br></th>
	</tr>
	<tr>
		<th colspan="3">내용</th>
	</tr>
	<tr>
		<td colspan="3">
		<div align="center">
		<%= content %>
		</div>
		</td>
	</tr>
	</table>
</div>
</body>
</html>