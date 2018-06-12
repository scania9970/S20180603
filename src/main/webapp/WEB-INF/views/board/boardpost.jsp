<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
	<tr>
		<td>${board.title }</td><td>${board.board_date }</td>	
	</tr>
	<tr> 
		<td>${board.nickname}</td><td><a href="#">수정 </a>| <a href="#"> 삭제</a></td>
	 </tr>
	<tr>
		<td colspan="2"> ${board.content } </td>
	</tr>
	</table>
	<input type="button" value="글쓰기" onclick="location.href='postingform'">
	 <input type="button" value="목록" onclick="location.href='list'">
</body>
</html>