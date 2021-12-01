<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcom SOJ</title>
<link rel="stylesheet" href="resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
</style>
<script type="text/javascript">
	$(function () {
		var cnt = 0;
		$(".mySlides>a").last().click(function(){
			$(".mySlides>ul").animate(
				{"margin-left":"-1080px"},500,
				function(){
					$(".mySlides>ul").css("margin-left","0px");
					$(".mySlides>ul").append($(this).children().eq(0))
				})
		})
		$(".mySlides>a").first().click(function(){
			$(".mySlides>ul").animate(
				{"margin-right":"+1080px"},500,
				function(){
					$(".mySlides>ul").css("margin-right","0px");
					$(".mySlides>ul").prepend($(this).children().eq(3))
				})
		})
	})
</script>
</head>
<body>

<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area">
			<h1>gnb area</h1>
		</div>
		<div class="top_area">
			<div class="logo_area">
				<h1>logo area</h1>
			</div>
			<div class="search_area">
				<h1>search area</h1>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="navi_bar_area">
			<h1>navi area</h1>
		</div>
		<div class="content_area">
			<fieldset>
			<div class="mySlides">
				<ul>
				    <li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1638149169.jpeg"></li>
				
	
					<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1637913097.jpg"></li>
		
		
					<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1637732092.jpg"></li>
			
		
					<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1638258239.jpeg"></li>
				</ul>
				
				<a><img src="resources/img/prev_btn.png"></a>
				<a><img src="resources/img/next_btn.png"></a>
				
			</div>
			</fieldset>
		</div>
		<div class="foot_bar_area">
			<h1>foot area</h1>
		</div>
	</div>
</div>
</body>
</html>