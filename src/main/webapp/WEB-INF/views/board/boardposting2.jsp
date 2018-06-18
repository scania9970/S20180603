<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../member/pageLoginCheck.jsp" %>
    <%@ include file="../main/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
<style type="text/css">


</style>
</head>

<body>
	<div>
	<form action="posting2">
		<table>
			<tr>
				<td>제목</td><td> <input type="text" name="title"> </td>
			</tr> 
			<tr>
				<td>내용</td> <td><input type="text" name="content"></td>
			</tr>
			<tr>
				<td>이메일</td><td><input type="text" name="email"> </td>
			</tr>
		</table>
		<input type="submit" value="완료">
	</form>
	</div>
</body>
</html>