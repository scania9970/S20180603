<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COTA</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css" />
<jsp:include page="header.jsp"/>
<style type="text/css">
	.header{
		border: 1px solid gray;
	}
</style>
</head>
<body>
	
	<!-- 최상단 슬라이더 -->
	<div class="slideshow-container">
		<div class="slides">
			<div class="image1">
				<div class="text" style="color:white;">
					<label>오직 개발자를 위한 타이핑 연습 사이트 COTA</label>
					<label>지금 바로 무료가입 후, 이용해 보세요</label>
					<input type="button" class=slider-btn value="가입하기" 
						   onclick="window.location='joinpage';" ></input>
				</div>
			</div>
		</div>
		<div class="slides">
			<div class="image2">
				<div class="text" style="color:white;">
					<label>개발자들의, 개발자에 의한, 개발자를 위한 포럼</label>
					<label>지금 포럼에서 자신의 지식을 공유하세요</label>
					<input type="button" class=slider-btn value="포럼 바로가기" 
						   onclick="window.location='list2';" ></input>
				</div>
			</div>
		</div>
		<div class="slides">
			<div class="image3">
				<div class="text">
					<label>COTA에서는 자신의 포트폴리오를 작성, 관리하고</label>
					<label>다른 사람들의 포트폴리오도 열람할 수 있습니다</label>
					<label>지금 바로 확인해보세요</label>
					<input type="button" class=slider-btn value="포트폴리오 작성" 
						   onclick="window.location='myinfoPort';" style="background-color: black; color: white;"></input>
				</div>
			</div>
		</div>
		<div class="slides">
			<div class="image4">
				<div class="text">
					<label>COTA는 한국 최대의 구인, 구직사이트입니다.</label>
					<label>누적 채용 건수 5449건의 COTA에서 커리어를 개발하세요</label>
					<input type="button" class=slider-btn value="바로가기" 
						   onclick="window.location='list2';" ></input>
				</div>
			</div>
		</div>
		
		<a class="prev" onclick="minusIndex()">&#10094;</a>
		<a class="next" onclick="plusIndex()">&#10095;</a>
		
		<div class="dots-container">
			<span class="dots" onclick="showImage(1)" onmouseover="dotHover(1)" onmouseout="dotOut(1)"></span>
			<span class="dots" onclick="showImage(2)" onmouseover="dotHover(2)" onmouseout="dotOut(2)"></span>
			<span class="dots" onclick="showImage(3)" onmouseover="dotHover(3)" onmouseout="dotOut(3)"></span>
			<span class="dots" onclick="showImage(4)" onmouseover="dotHover(4)" onmouseout="dotOut(4)"></span>
		</div>
	</div>
	
	<!-- 인포 -->
	<div class="info-wrapper">
		<div class="info one">
			<div class="digit-wrapper">
				<label class="digit">14857</label>
				<label class="digit-info">COTA를 사용하는 사람</label>
			</div>
		</div>
		<div class="info twoo">
			<div class="digit-wrapper">
				<label class="digit">3</label>
				<label class="digit-info">사용가능한 언어</label>
			</div>
		</div>
		<div class="info three">
			<div class="digit-wrapper">
				<label class="digit">8867</label>
				<label class="digit-info">구직자</label>
			</div>
		</div>
		<div class="info four">
			<div class="digit-wrapper">
				<label class="digit">5449</label>
				<label class="digit-info">누적 채용건수</label>
			</div>
		</div>
	</div>
	
	<!-- 랭킹 -->
	<div class="ranking-header">
		<div class="card one">
			<div class="card-row">
				<div class="card-cell today">오늘의 타자왕</div>
			</div>
		</div>
		<div class="card two">
			<div class="card-row">
				<div class="card-cell weekly">이달의 타자왕</div>
			</div>
		</div>
		<div class="card three">
			<div class="card-row">
				<div class="card-cell monthly">올해의 타자왕</div>
			</div>
		</div>
	</div>
	<div class="ranking-wrapper">
		<div class="card one">
			<c:set var="count" value="1" />
			<c:forEach var="rank" items="${ranks_today}" begin="0" end="9" step="1">
				<div class="card-row">
					<c:if test="${count == 1 }">
						<div class="card-cell rank"><i class="crown"></i></div>
					</c:if>
					<c:if test="${count != 1 }">
						<div class="card-cell rank">${count }</div>
					</c:if>
					
					<c:if test="${rank.lang_type == 'java'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="java"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'python'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="python"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'cdoubleplus'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="c"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
				</div>
			</c:forEach>
		</div>
		
		<div class="card two">
			<c:set var="count" value="1" />
			<c:forEach var="rank" items="${ranks_weekly}" begin="0" end="9" step="1">
				<div class="card-row">
					<c:if test="${count == 1 }">
						<div class="card-cell rank"><i class="crown"></i></div>
					</c:if>
					<c:if test="${count != 1 }">
						<div class="card-cell rank">${count }</div>
					</c:if>
					
					<c:if test="${rank.lang_type == 'java'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="java"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'python'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="python"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'cdoubleplus'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="c"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
				</div>
			</c:forEach>
		</div>
		
		<div class="card three">
			<c:set var="count" value="1" />
			<c:forEach var="rank" items="${ranks_anual}" begin="0" end="9" step="1">
				<div class="card-row">
					<c:if test="${count == 1 }">
						<div class="card-cell rank"><i class="crown"></i></div>
					</c:if>
					<c:if test="${count != 1 }">
						<div class="card-cell rank">${count }</div>
					</c:if>
					
					<c:if test="${rank.lang_type == 'java'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="java"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'python'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="python"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
					<c:if test="${rank.lang_type == 'cdoubleplus'}">
						<div class="card-cell">${rank.nickname} / ${rank.speed}타 / ${rank.accuracy}% /<i class="c"></i></div>
						<c:set var="count" value="${count + 1}" />
					</c:if>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		
		var slideIndex = 1;
		
		showImage(slideIndex);
		
		function minusIndex(){
			
			var slide = document.getElementsByClassName("slides");
			var dot = document.getElementsByClassName("dots");
			var cur = slideIndex-1;
			slide[cur].style.left = "200%";
			slide[cur].style.opacity = "0";
			dot[cur].style.background = "transparent";
			dot[cur].style.border = "3px solid white";
			
			slideIndex--;
			if(slideIndex < 1) { slideIndex = slide.length};
			
			slide[slideIndex-1].style.opacity = "1";
			dot[slideIndex-1].style.background = "red";
			dot[slideIndex-1].style.border = "3px solid red";
			
			setTimeout(function(){ slide[cur].style.left = "0%"; }, 300);
			
			
		}
		
		function plusIndex(){
			
			var slide = document.getElementsByClassName("slides");
			var dot = document.getElementsByClassName("dots");
			var cur = slideIndex-1;
			slide[cur].style.left = "-100%";
			slide[cur].style.opacity = "0";
			dot[cur].style.background = "transparent";
			dot[cur].style.border = "3px solid white";
			
			slideIndex++;
			if(slideIndex > slide.length){ slideIndex = 1};
			
			slide[slideIndex-1].style.opacity = "1";
			dot[slideIndex-1].style.background = "red";
			dot[slideIndex-1].style.border = "3px solid red";
			
			setTimeout(function(){ slide[cur].style.left = "0%"; }, 300);
			
			
		}
		
		function showImage(n){
			
			slideIndex = n;
			var slide = document.getElementsByClassName("slides");
			var dot = document.getElementsByClassName("dots");
				
			for(var i = 0; i < slide.length; i++){
				slide[i].style.opacity = "0";
				dot[i].style.background = "transparent";
				dot[i].style.border = "3px solid white";
			};
			
			slide[slideIndex-1].style.opacity = "1";
			dot[slideIndex-1].style.background = "red";
			dot[slideIndex-1].style.border = "3px solid red";
		}
		
		function dotHover(n){
			var dot = document.getElementsByClassName("dots");
			if(dot[n-1].style.background != "red"){
				dot[n-1].style.background = "white";
			}
			
		}
		
		function dotOut(n){
			var dot = document.getElementsByClassName("dots");
			if(dot[n-1].style.background != "red"){
				dot[n-1].style.background = "transparent";
			}
		}
		
		$('.digit').each(function () {
		    $(this).prop('Counter',0).animate({
		        Counter: $(this).text()
		    }, {
		        duration: 2000,
		        easing: 'swing',
		        step: function (now) {
		            $(this).text(Math.ceil(now));
		        }
		    });
		});
		
		var intervalId = setInterval(sliderChange, 5000);
		function sliderChange(){
			slideIndex += 1;
			if(slideIndex > 4)
				slideIndex = 1;
			showImage(slideIndex);
		}
		
	</script>
</body>
</html>