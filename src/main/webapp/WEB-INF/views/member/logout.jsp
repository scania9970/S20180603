<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	<%
		session.invalidate(); // session 종료
	%>

<script type="text/javascript">
window.onload = function() { // 버튼없이 바로 실행
	alert("응 꺼져~ 느림보새끼야 ~ 응 꺼져 응 닥치고 꺼져 응 ~");
	location.href="loginpage";  /*  main page로 이동     jsp에서 이동시  */    <%-- <% response.sendRedirect("start"); 자바시 이동%>  --%>
}
</script>


</body>
</html>