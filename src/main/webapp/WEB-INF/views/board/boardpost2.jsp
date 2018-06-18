<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../main/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#replyPosting {
		width: 600px;
		height: 200px;
		background: white;
	}
	#reply{
	}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	


</script>
</head>

<body>

<% String email = (String)session.getAttribute("email"); 
  System.out.println("session email->"+ email);
%>

${board.email }
	<input type="hidden" name="bnum" value="${board.bnum }">
	<input type="hidden" name="email" value="${board.email }">
	<table>
	<tr>
		<td>${board.title }</td><td>${board.board_date }</td>	
	</tr>
	<tr> 
		<%-- <c:if test="${email }  eq ${board.email }">
			<td>${board.nickname}</td><td><a href="boardupdateForm?bnum=${board.bnum }">수정 </a>| <a href="boarddelete?bnum=${board.bnum }"> 삭제</a></td>
		</c:if>
		<c:if test="${email } ne ${board.email }">
			<td colspan="2">${board.nickname}</td>
		</c:if> --%>
	
	 </tr>
	<tr>
		<td colspan="2"> ${board.content } </td>
	</tr>
	</table>
	
	
	<div>
		<table>
		
		<c:forEach var="reply" items="${rlist }">
			<tr>
				<td>${reply.nickname }</td>
				<td>${reply.reply_date }  </td>
					
			</tr>
			<tr>
				<td colspan="2">${reply.content }</td>
			</tr>
		</c:forEach>
		
		</table>
	</div>
	
	<div id="reply">             
	<form action="replyPosting2">
		<input type="hidden" value="${board.bnum }" name="bnum">
		<input type="hidden" value="test1@email" name="email">
		<input type="text" id="replyPosting" name="content">
		<input type="submit" value="입력" >
	</form>
	</div>
	
	<input type="button" value="글쓰기" onclick="location.href='postingform'">
	 <input type="button" value="목록" onclick="location.href='list1'">
</body>
</html>