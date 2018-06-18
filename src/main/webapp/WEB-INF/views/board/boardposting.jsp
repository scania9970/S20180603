<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
<style type="text/css">
<%
	String email = (String)session.getAttribute("email");
%>
	
	#main{
		margin: 0 auto;
		border: 1px solid black;
		padding: 10px;
		width: 600px;
		border-radius:10px;
		margin-bottom: 20px; 
		background: #ededed;
	}
	#title{
		float: left;
		width: 510px;
		border: 1px solid;
		margin: 0px 0px 10px 0px;
		border-radius:10px;
	}
	#content{
		margin: 10px;
		padding: 5px;
		margin: 0 auto;
		width: 500px;
		height: 400px;
		border: 1px solid;
		text-align: left;
		border-radius:10px;
	}
</style>
</head>

<body>
	<div>
	<form action="posting">
	
		
		
		<div id="main">
		<table>
			<tr>
				<td width="50px">제목 </td><td width="550px"><input type="text" name="title" id="title"> </td>
			</tr> 
			<tr>
				<td>내용 </td>              <td><input type="text" name="content" id="content"></td>
			</tr>
			<tr>
				<td>이메일</td>             <td><input type="text" name="email" > </td>
			</tr>
		</table>
		<input type="submit" value="완료">
		</div>
	</form>
	</div>
</body>
</html>