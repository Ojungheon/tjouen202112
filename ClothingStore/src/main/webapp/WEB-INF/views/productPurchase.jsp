<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productPurchase.jsp</title>
<link rel="stylesheet" href="resources/css/main.css">
<style>
.product_purchase{
	width: 100%;
	height: 500px;
}
.img_area{
	width: 40%;
	height: 100%;
	float: left;
}
.product_detail_area{
	width: 60%;
	height: 100%;
}

</style>
</head>
<body>
	
	<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area">
			로그인   회원가입  장바구니  마이페이지  커뮤니티   <a href="qna">Q&A</a>   Review
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
							<li><a href="#1">sub_menu</a></li>
							<li><a href="#1">sub_menu2</a></li>
							<li><a href="#1">sub_menu3</a></li>
						</ul>
					</li>
					<li><a href="#">아우터</a>
						<ul>
							<li><a href="#1">sub_menu</a></li>
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
			<h3>상품 구매</h3>
			<hr>
			<div class="product_purchase">
				<div class="img_area">
					<img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt="">
				</div>
				<div class="product_detail_area">
					<h2>상품명</h2><hr>
					<h2>판매가</h2><hr>
					<h2>배송비</h2><hr>
					
				</div>
			</div>
			<br>
			<hr>
			<div class="qnaList">
				<table>
					<thead>
						<tr>
							<th style="width: 50px">번호</th>
							<th style="width: 150px">상품정보</th>
							<th style="width: 150px">카테고리</th>
							<th style="width: 900px">제목</th>
							<th style="width: 150px">작성자</th>
							<th style="width: 150px">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center">1</td>
							<td style="text-align: center">아무상품</td>
							<td style="text-align: center">상품문의</td>
							<td style="text-align: left; padding-left: 20px;">사이즈가 왜 이래요?</td>
							<td style="text-align: center">지나가는사람</td>
							<td style="text-align: center">2021-12-06</td>
						</tr>
					</tbody>
				</table>
			</div>
		
		</div>
		<div class="foot_bar_area">
			<h1>foot area</h1>
		</div>
	</div>
</div>
</body>
</html>