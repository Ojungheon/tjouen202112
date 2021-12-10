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
	line-height: 50px;
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
 ul, ol, li { list-style:none; margin:0; padding:0; }
   
    ul.myMenu {}
    ul.myMenu > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; border:1px solid #eee;  text-align:center; position: relative;}
    ul.myMenu > li:hover { background:#fff; }
    ul.myMenu > li ul.community_sub { display:none; position: absolute; top:30px; left:0; }
    ul.myMenu > li:hover ul.community_sub {display: block;}
    ul.myMenu > li ul.community_sub > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; text-align:center; }
    ul.myMenu > li ul.community_sub > li:hover { background:#fff; }
</style>
</head>
<body>
<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area">
			<div class="gnb_area" id="container">
			<ul class="myMenu">
				<li class="menu1"><a href="member/login">로그인</a></li>
				<li class="menu2"><a href="member/join">회원가입</a></li>
				<li class="menu3">장바구니</li>
				<li class="menu4">마이페이지</li>
				<li class="menu5">
					커뮤니티
					<ul class="community_sub">
						<li><a href="notice">공지사항&이벤트</a></li>
						<li>Q&A</li>
						<li>Review</li>	
					</ul>
				</li>
				<li class="menu6"><a href="qna">Q&A</a></li>
				<li class="menu7">Review</li>
			</ul>
		</div>
		<div class="top_area">
			<div class="logo_area">
				<a href="/main"><img src="resources/img/SOJ Fashion.png"></a>
			</div>
			<div class="search_area">
				<table class="search_table">
					<tbody>
						<tr class="search_box">
							<td class="search_input"><input class="search_input_box" type="text" name="txt_search"></td>
							<td class="run_search" ><a href="searchResult">검색</a></td>
						</tr>
					</tbody>
				</table>
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
</div>
	
</body>
</html>