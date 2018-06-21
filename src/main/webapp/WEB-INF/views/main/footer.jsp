<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
body{
	margin: 0px;
}
.footer {
	font-family: 'NanumSquareRound', sans-serif;
	font-size: 20px;
	background-color: #161616;
	color: white;
	width: 100%;
	height: 240px;
	padding: 20px 0;
	display: inline-block;
}
label{
	display: block;
	text-align: center;
}

.footer-info{
	display: flex;
    align-items: center;
    justify-content: center;
}

.middle {
	margin: 0 20px;
}

#cota-info{
	font-size: 25px;
	color: #BDBDBD;
}

#cota-info:hover {
	color: #FFE400;
	cursor: pointer;
}

.partition-l{
	margin-left: 20px;
}

.partition-r{
	margin-right: 20px;
}
</style>
</head>
<body>
	<div class="footer">
		<label style="font-size: 60px;">COTA</label>
		<label style="color: #D5D5D5;">&#169;2018</label>
		<label style="color: #D5D5D5;"><a href="mailto:info@cota.com" style="color: white">info@cota.com</a></label>
		<label style="font-size: 30px;">Typing practice only for programmers</label>
		<div class="footer-info">
			<a id="cota-info">about</a>
			<a id="cota-info" class="middle"> | </a>
			<a id="cota-info">contract</a>
			<a id="cota-info" class="partition-l"> | </a>
			<a id="cota-info" class="middle">terms</a>
			<a id="cota-info" class="partition-r"> | </a>
			<a id="cota-info">privacy</a>
			<a id="cota-info" class="middle"> | </a>
			<a id="cota-info">help</a>
		</div>
	</div>
</body>
</html>