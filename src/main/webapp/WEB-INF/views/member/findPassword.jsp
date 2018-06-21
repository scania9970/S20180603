<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<style>
.joinbutton {
	width : 100%;
	height: 40px;
	color: white;
	background-color:#000000;
	border-color: transparent;
}

#emailChkbtn {
	color: white;
	background-color:#2B2B2B;
	border-color: transparent;
}

#btnConfirm {
	color: white;
	background-color:#2B2B2B;
	border-color: transparent;
}

#btnEmailChk {
	color: white;
	background-color:#2B2B2B;
	border-color: transparent;
}

#nicknameChkbtn {
	color: white;
	background-color:#2B2B2B;
	border-color: transparent;
}

#output {
	width : 150px;
	height : 150px;
}

.test {
	height:13px;
}

.test1 {
	height:2px;
}

#image_select {
	padding : 0 0 0 50px;
	margin : 0 0 0 20px;
}

#content {
	font-size: 13px;
	color : #FF3636;
}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">



</script>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/mypage/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/mypage/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/mypage/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/mypage/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-5 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-size: 20pt" align="center">비밀번호 찾기</h2>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="insertmb" name="join" method="post" enctype="multipart/form-data" onsubmit="return chk()">
                            <fieldset>
                                <div class="form-group">
                              	    <input class="form-control" placeholder="E-mail" name="email" id="email" type="email" required autofocus>
                                    <button id='emailChkbtn' class="form-control">이메일 중복확인</button>
                                   	
                                   	<div class="test"></div>

                                    <span id="spanemail"></span>
                                    <input type="text" id="confirmCode" name="confirmCode" class="form-control" placeholder="인증번호" disabled="disabled" required>
                                    <input class="form-control" type="button" name="btnEmailChk" id='btnEmailChk' value="인증번호받기" onclick="emailCheck(join.email.value)">
                                    <div class="test1"></div>
                                    <input type="button" id="btnConfirm" name="btnConfirm" class="form-control" value="인증하기" disabled="disabled">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="닉네임" name="nickname" id="nickname" type="text" required>
                                    <button id='nicknameChkbtn' class="form-control">닉네임 중복확인</button>
                                    <span id="spannickname"></span>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호" name="password" id="password" type="password" required>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="비밀번호 확인" name="passwordChk" id="passwordChk" type="password" required >
                                    <span id="spanPassword"></span>
                                </div>
                                 <div class="form-group" align="center"><img id="output" src="images/no_profile_image.png"></div>
                                 <div class="form-group" align="center" id="image_select"><input type="file" accept="image/*" onchange="loadFile(event)" name="profile_url"></div>
                                <div class="checkbox">
                                    <label>
                                        <input name="is_enterprise" type="checkbox" id="checkbox" value="true">기업회원 구분 &nbsp;&nbsp;<span id="content"> ※ 기업회원 구분 어쩌고 응 쌸라쌸라입니다. 참고해라</span>
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                                <!-- <a href="/cota/main" class="btn btn-lg btn-success btn-block">회원가입</a> -->
                                <input class="joinbutton" type="submit" value="회원가입">
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/mypage/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${pageContext.request.contextPath}/mypage/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/mypage/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/mypage/dist/js/sb-admin-2.js"></script>

</body>

</html>
