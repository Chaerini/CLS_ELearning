<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet"> <!-- font -->
<style>
* {font-family:'Jua', sans-serif;}
</style>
</head>
<body style="background-image:url('image/back.jpg');background-size:cover;">

<div style="display: flex;
  justify-content: center;
  align-items:center;
  min-height: 100vh;">
<table style="background-color:rgba( 116, 116, 116, 0.5 );">
<thead>
  <tr>
    <th colspan="2" style="font-size:3em;">CLS-ELEARNING</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td align="center" colspan="2" style="background-color:rgba( 116, 116, 116, 0.5 );">
    <form method="post" action="login.jsp" name="form1">
				<table bgcolor="#FFFFFF" style="background-color:rgba( 116, 116, 116, 0.5 );" width=600px height=10px;>
					
				
							<table  colspan="2" align="middle">
							<tr>
							<td><input type="text" placeholder="이름" name="username" style="width:600px;height:40px;font-size:20px;"></td>
							</tr>
							
							<tr>
							<td><input type="text" placeholder="아이디" name="userid" style="width:600px;height:40px;font-size:20px;"></td>
							</tr>
							
							<tr>
							<td><input type="password" placeholder="비밀번호" name="passwd" style="width:600px;height:40px;font-size:20px;"></td>
							</tr>
							
							<tr>
							<td><input type="text" placeholder="전화번호" name="tel" style="width:600px;height:40px;font-size:20px;"></td>
							</tr>
							
							<tr>
								<td>
								<select name=sex>
								<option selected>남</option>
								<option>여</option>
								</select></td>
							</tr>
							</table>
						
						<tr>
						<td align="center">
						<input type="button" onclick="location.href='NewuserMake.jsp'" value="회원가입" style="font-size:20px;">
						</td>		
						</table>
				
					
		</form>
		</td>		
 		</tr>
</tbody>
</table>
</div>
</body>
</html>