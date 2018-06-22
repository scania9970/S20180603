<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<%@ include file="/WEB-INF/views/main/header.jsp" %>
<style>
.findbutton {
	width : 100%;
	height: 40px;
	color: white;
	background-color:#000000;
	border-color: transparent;
}

.test1 {
	height: 10px;
}

#emailChkbtn {
	width : 100%;
	height: 40px;
	color: white;
	background-color:#000000;
	border-color: transparent;
}
#btnEmailChk {
	width : 100%;
	height: 40px;
	color: white;
	background-color:#000000;
	border-color: transparent;
}
#btnConfirm {
	width : 100%;
	height: 40px;
	color: white;
	background-color:#000000;
	border-color: transparent;
}


</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

$(document).on('click',  function() {
	var sendData = 'email=' + $('#email').val();
	/* alert($('#email').val()); */
	$.ajax ({
		url : '/cota/emailCheck',
		type : 'get',
		data : sendData,
		success : function(data) {
			console.log("data : " + data );
			if (data == 1) {
				
				$('#spanemailChk').html("이메일이 확인 되었습니다.");

				return true;
			} else {
				$('#email').val("");
				$('#email').focus();
				$('#spanemailChk').html("등록되지 않은 이메일입니다.");
				return false;
			}
		}
	});
});

function emailCheck(){
	if (!findPassword.email.value) { 
		alert("이메일 주소를 입력하세요.");
		findPassword.email.focus();
		
		return;
	} else if(findPassword.email.value.indexOf('@') < 0 || findPassword.email.value.indexOf('.') < 0) {
		alert("이메일 주소가 올바르지 않습니다.");
		findPassword.email.focus();
		
		return;
	}
	
	findPassword.btnConfirm.value = "확인";
	$("#confirmCode").prop('disabled', false);
	$("#btnConfirm").prop('disabled', false);
	$("#btnConfirm").css('color', 'white');
	$("#btnConfirm").css('background-color', '#2B2B2B');
	
	var sendData = 'email=' + $('#email').val();
	console.log("sendData : " + sendData);
	$.post(
		'/cota/EmailConfirmPro',
		sendData,
		function(result) {
			console.log("authNum : " + result);
			confirmNum = result;
			console.log("confirmNum : " + confirmNum);
	});
	
	alert("해당 이메일로 인증번호가 발송되었습니다.");
};

$(function() {
	$('#btnConfirm').click(function() {
		if (!findPassword.confirmCode.value) { 
			alert("인증번호를 입력해주세요.");
			findPassword.confirmCode.focus();
			
			return;
		}
		
		confirmEmail(findPassword.confirmCode.value, confirmNum);
	});
});

function confirmEmail(emailconfirm_value, authNum) {
	console.log("emailconfirm_value : " + emailconfirm_value);
	console.log("authNum : " + authNum);
	if(!emailconfirm_value || emailconfirm_value != authNum){	// 인증코드가 일치하지 않을 경우
		alert("인증번호가 일치하지 않습니다!");
		findPassword.confirmCode.value = "";
		findPassword.confirmCode.focus();
	} else if(emailconfirm_value == authNum){	// 일치할 경우
		alert("인증에 성공하였습니다.");
		findPassword.btnConfirm.value = "인증완료";
		$("#btnConfirm").prop('disabled', true);
		$("#btnConfirm").css('color', '#000000');
		$("#btnConfirm").css('background-color', '#DDDDDD');
	}
	
	return;
};

function chk() {
	
	if (findPassword.btnConfirm.value.indexOf("인증완료") < 0 ) {
		alert("이메일 인증이 처리되지 않았습니다.");
		findPassword.email.focus();
		
		return false;
	}
	return true;
};

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
                <div class="login-panel panel panel-default"  style="margin-top: 300px;">
                    <div class="panel-heading">
                        <h2 class="panel-title" style="font-size: 20pt" align="center">비밀번호 찾기</h2>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="passwordchange" name="findPassword" method="post" onsubmit="return chk()">
                            <fieldset>
                                <div class="form-group">
                              	    <input class="form-control" placeholder="E-mail" name="email" id="email" type="email" required>
                              	    <div class="test1"></div>
                              	   		 <button id='emailChkbtn' class="form-control">Email 확인</button>
                              	   		 <span id="spanemailChk"></span>
                              	  			<div class="test1"></div>
                              	  				<input type="text" id="confirmCode" name="confirmCode" class="form-control" placeholder="인증번호" required>
                                    			<input class="form-control" type="button" name="btnEmailChk" id='btnEmailChk' value="인증번호받기" onclick="emailCheck(findPassword.email.value)">
                                    			<div class="test1"></div>
                                    		<input type="button" id="btnConfirm" name="btnConfirm" class="form-control" value="인증하기" disabled="disabled">
                                    	<div class="test1"></div>
                                    <input class="findbutton" type="submit" value="인증번호로 로그인">
                                </div>
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
