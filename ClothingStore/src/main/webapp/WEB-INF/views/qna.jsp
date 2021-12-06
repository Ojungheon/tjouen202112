<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문답변게시판</title>
<link rel="stylesheet" href="resources/css/main.css">
<style>
* {
	margin: 0;
	padding: 0;
	text-decoration: none;
	list-style: none;
}

.category li {
	width: 150px;
	height: 50px;
	border: 1px solid gray;
	text-align: center;
	float: left;
	margin: 10px 20px 10px 20px;
}

.category {
	width: calc(192px * 6);
	height: 70px;
	position: relative;
	margin: 0 auto;
}

.selected {
	background-color: darkgray;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	border: 1px solid black;
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
			<h4>Q&A 게시판</h4>
			<hr>
			<div class="category">
				<ul>
					<li id="all" onclick="choose('all')" class="selected">전체</li>
					<li id="product" onclick="choose('product')">상품문의</li>
					<li id="purDeliv" onclick="choose('purDeliv')">주문/배송문의</li>
					<li id="exchange" onclick="choose('exchange')">교환/반품문의</li>
					<li id="pay" onclick="choose('pay')">입금/결제문의</li>
					<li id="other" onclick="choose('other')">기타문의</li>
				</ul>
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
							<td style="text-align: left; padding-left: 20px;"><a href="qnaPasswordCheck">사이즈가 왜 이래요?</a></td>
							<td style="text-align: center">지나가는사람</td>
							<td style="text-align: center">2021-12-06</td>
						</tr>
					</tbody>
				</table>
				<a href="qnaWriteForm">글쓰기</a>
			</div>
			<script>
		        const all = document.getElementById("all");
		        const product = document.getElementById("product");
		        const purDeliv = document.getElementById("purDeliv");
		        const exchange = document.getElementById("exchange");
		        const pay = document.getElementById("pay");
		        const other = document.getElementById("other");
		        function removeCategoryClass() {
		            all.classList.remove("selected");
		            product.classList.remove("selected");
		            purDeliv.classList.remove("selected");
		            exchange.classList.remove("selected");
		            pay.classList.remove("selected");
		            other.classList.remove("selected");
		        }
		        function choose(category) {
		            removeCategoryClass();
		            document.getElementById(category).classList.add("selected");
		        }
		    </script>
		</div>
		<div class="foot_bar_area">
			<h1>foot area</h1>
		</div>
	</div>
</div>
	
</body>
</html>