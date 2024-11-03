<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	if(name == null || subject == null ||
			name.trim().equals("") || subject.trim().equals("")){
	%>
			<script>
				alert("작성자이름, 글제목은 필수입니다!");
				history.back();
			</script>
	<%
			return;
		}
	%>

<%
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int cnt = 0;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String uid = "C##WEB01";
	String pw = "1234";
	
	String sql_insert  = "INSERT INTO test_write" + "(wr_uid, wr_subject, wr_content, wr_name) VALUES(seq_cnt.NEXTVAL,?,?,?)";

	

	try{
		Class.forName(driver);
		conn = DriverManager.getConnection(url,uid, pw);
		
		pstmt = conn.prepareStatement(sql_insert);
		pstmt.setString(1, subject);
		pstmt.setString(2, content);
		pstmt.setString(3, name);
		
		cnt = pstmt.executeUpdate();
		
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


<% if(cnt == 0){ %>
	<script>
		alert("등록 실패");
		history.back();
	</script>
<% } else { %>
	<script>
		alert("등록 성공");
		location.href = "Q&Alist.jsp";
	</script>
<% }  %>