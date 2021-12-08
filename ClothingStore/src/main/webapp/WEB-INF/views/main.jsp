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
                    {"width":"calc(1080px*5)", "margin-left":"-1080px"},
                    0,
                    function () {
                        $(".mySlides>ul").prepend($(this).children().eq(3));
                    }
                )
                $(".mySlides>ul").animate(
                    {"margin-left":"0px", "width":"calc(1080px*4)"},
                    500,
                )
		})
	})
</script>
</head>
<body>

<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area">
			<a href="member/login">로그인</a>   <a href="member/join">회원가입</a>  장바구니  마이페이지  커뮤니티   <a href="qna">Q&A</a>   Review
		</div>
		<div class="top_area">
			<div class="logo_area">
				<a href="/main"><img src="resources/img/SOJ Fashion.png"></a>
			</div>
			<div class="search_area">
				<h1>search area</h1>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="navi_bar_area">
			<div id="menu">
				<ul>
					<li><a href="#">NEW</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">BEST50</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">SALE</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">상의</a>
						<ul>
							<li><a href="#1">LONG/HOODY</a></li>
							<li><a href="#1">KNIT</a></li>
							<li><a href="#1">SLEEVELESS</a></li>
						</ul>
					</li>
					<li><a href="#">아우터</a>
						<ul>
							<li><a href="#1">JUMPER</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">하의</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">세트</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">잡화</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
				</ul>
			</div>
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
			<hr>
			<div class="best">
				<div class="title_area">
					<h3>BEST ITEM</h3><br>
					<p>이 달의 베스트 아이템을 확인해보세요.</p>
					<hr>
				</div>
				<div class="best_item_area">
					<ul class="lst_type">
						<li>
							<a href="/productPurchase">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>
								1997 양기모 후드<br>  
								가격: 42000원<br>
								엘코드
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>1997 양기모 후드 가격: 42000원</em>
							</a>
						</li>
					</ul>
				</div>
			</div>	
				
			<div class="new"></div>
			<div class="sale"></div>
			
		</div>
		<div class="foot_bar_area">
			<h1>foot area</h1>
		</div>
	</div>
</div>
</body>
</html>