<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기</title>
</head>
<body>
	<form action="posting">
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
</body>
</html>