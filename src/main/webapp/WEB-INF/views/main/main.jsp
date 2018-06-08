<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COTA</title>
<link type="text/css" rel="stylesheet" 
		  href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body>
	<jsp:include page="header.jsp"/>
	
	<!-- 최상단 슬라이더 -->
	<div class="slideshow-container">
		<div class="slides">
			<div class="image1">
				<div class="text">Caption 1</div>
			</div>
		</div>
		<div class="slides">
			<div class="image2">
				<div class="text">Caption 2</div>
			</div>
		</div>
		<div class="slides">
			<div class="image3">
				<div class="text">Caption 3</div>
			</div>
		</div>
		<div class="slides">
			<div class="image4">
				<div class="text">Caption 4</div>
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
		<div class="info two">
			<div class="digit-wrapper">
				<label class="digit">11</label>
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
	<div class="ranking-wrapper">
		<div class="card one">1</div>
		<div class="card two">2</div>
		<div class="card three">3</div>
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
			
			setTimeout(function(){ slide[cur].style.left = "0%"; }, 100);
			
			
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
			
			setTimeout(function(){ slide[cur].style.left = "0%"; }, 100);
			
			
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
		        duration: 3000,
		        easing: 'swing',
		        step: function (now) {
		            $(this).text(Math.ceil(now));
		        }
		    });
		});
		
	</script>
</body>
</html>