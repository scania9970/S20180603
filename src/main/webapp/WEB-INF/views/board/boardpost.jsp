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
		width: 580px;
		height: 100px;
		background: white;
	}
	#main{
		margin: 0 auto;
		border: 1px solid black;
		padding: 10px;
		width: 600px;
		border-radius:10px;
		margin-bottom: 20px; 
	}
	#title{
		float: left;
		width: 400px;
		border: 1px solid;
	}
	#date{
		text-align: right;
	}
	#content{
		padding: 5px;
		margin: 0 auto;
		width: 550px;
		height: 400px;
		border: 1px solid;
		text-align: left;
	}
	#feplyall{
		background-color: #f4f4f4;
		padding: 10px;
		border: 1px solid;
		width: 600px;
		margin: 0 auto;
	}
	#reply{
		border: 1px solid;
		padding: 5px;
	}
	#r_nickname{
	
		width: 500px;
		float: left;
	}
	#r_date{
	}
	#r_content{
		width: 580px;
		height: 60px;
		border: 1px solid;
		margin: 6px;
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

	<input type="hidden" name="bnum" value="${board.bnum }">
	<input type="hidden" name="email" value="${board.email }">
	
	<div id="main">
		<div id="title">${board.title }</div><div id="date">${board.board_date }</div>
		<pre id="content">
			${board.content }
		</pre>
		
	</div>
	
		<%-- <c:if test="${email }  eq ${board.email }">
			<td>${board.nickname}</td><td><a href="boardupdateForm?bnum=${board.bnum }">수정 </a>| <a href="boarddelete?bnum=${board.bnum }"> 삭제</a></td>
		</c:if>
		<c:if test="${email } ne ${board.email }">
			<td colspan="2">${board.nickname}</td>
		</c:if> --%>
	<div id="feplyall">
	
		<div id="replyform">
			
			<c:forEach var="reply" items="${rlist }">
				<div id="r_nickname">
					${reply.nickname }
				</div>
				<div id="r_date">
					${reply.reply_date }
				</div>
				
				<div id="r_content">
					${reply.content }
				</div>
				<hr/>
			</c:forEach>
			
		</div>
		
		<div id="reply">             
		<form action="replyPosting1">
			<input type="hidden" value="${board.bnum }" name="bnum">
			<input type="hidden" value="${member.email }" name="email">
			
			<c:if test="${member.email == null}">
				<input type="text" id="replyPosting" name="content" disabled="disabled">
			</c:if>
			<c:if test="${member.email != null}">
				<input type="text" id="replyPosting" name="content">
				<input type="submit" value="댓글입력" >
			</c:if>
			
		</form>
		</div>
	</div>
	
	<input type="button" value="글쓰기" onclick="location.href='postingform'">
	 <input type="button" value="목록" onclick="location.href='list1'">
</body>
</html>