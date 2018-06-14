<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="boardupdate">
	<input type="hidden" name="bnum" value="${board.bnum }">
		<table>
	<tr>
		<td>제목</td><td><input type="text" name="title" value="${board.title }"></td>
	</tr>
	<tr> 
		<td>작성자</td><td colspan="2">${board.nickname}</td>
	 </tr>
	<tr>
		<td colspan="2"><input type="text" name="content" value="${board.content }"></td>
	</tr>
	</table>
	<input type="submit" value="완료">
</form>
</body>
</html>