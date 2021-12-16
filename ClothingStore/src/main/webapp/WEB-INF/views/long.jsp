<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>긴팔티</title>
<link rel="stylesheet" href="resources/css/main.css">
<style>
 ul, ol, li { list-style:none; margin:0; padding:0; }
   
    ul.myMenu {}
    ul.myMenu > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; border:1px solid #eee;  text-align:center; position: relative;}
    ul.myMenu > li:hover { background:#fff; }
    ul.myMenu > li ul.community_sub { display:none; position: absolute; top:30px; left:0; }
    ul.myMenu > li:hover ul.community_sub {display: block;}
    ul.myMenu > li ul.community_sub > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; text-align:center; }
    ul.myMenu > li ul.community_sub > li:hover { background:#fff; }
.sorting_method_area{
	height: 50px;
}
.sorting_area{float: right}  
select {
	font-size: 1.0rem;
}  
</style>
</head>
<body>
<div class="wrapper">
	<div class="wrap">
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
				<a href="/main"><img src="resources/img/SOJ Fashion.png" width="100%" height="100%"></a>
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
					<li><a href="#">SALE</a></li>
					<li><a href="#">1+1 SET</a></li>
					<li><a href="#">상의</a>
						<ul>
							<li><a href="#1">긴팔티</a></li>
							<li><a href="#1">맨투맨/후드</a></li>
							<li><a href="#1">니트</a></li>
							<li><a href="#1">나시</a></li>
						</ul>
					</li>
					<li><a href="#">아우터</a>
						<ul>
							<li><a href="#1">코트/트렌치코트</a></li>
							<li><a href="#1">점 퍼</a></li>
							<li><a href="#1">가디건</a></li>
							<li><a href="#1">자켓</a></li>
						</ul>
					</li>
					<li><a href="#">하의</a>
						<ul>
							<li><a href="#1">슬랙스</a></li>
							<li><a href="#1">밴딩팬츠</a></li>
							<li><a href="#1">면바지</a></li>
							<li><a href="#1">청바지</a></li>
						</ul>
					</li>
					<li><a href="#">신발&가방</a>
						<ul>
							<li><a href="#1">신발</a></li>
							<li><a href="#1">가방</a></li>
						</ul>
					</li>
					<li><a href="#">ACC</a>
						<ul>
							<li><a href="#1">모자</a></li>
							<li><a href="#1">안경/선글라스</a></li>
							<li><a href="#1">벨트</a></li>
							<li><a href="#1">양말</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
		<div class="content_area">
			<h3>긴팔티</h3>
			<br>
			<hr>
			<div class="sorting_method_area">
				<div class="count_area"> total ?? items</div>
				<div class="sorting_area">
					<select name="method" id="sortingMethod">
						<option value="" selected="selected">정렬방식</option>
						<option value="option1">인기순</option>
						<option value="option2">높은가격순</option>
						<option value="option3">낮은가격순</option>
						<option value="option4">최신순</option>
					</select>
				</div>
			</div>
			<hr>
			<div class="item_area">
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
			<div class="foot_bar_area">
				
				<div class="footer_nav">
					<div class="footer_nav_container">
						<ul>
							<li>회사소개</li>
		                    <span class="line">|</span>
		                    <li>이용약관</li>
		                    <span class="line">|</span>
		                    <li>고객센터</li>
		                    <span class="line">|</span>
		                    <li>광고문의</li>
		                    <span class="line">|</span>
		                    <li>채용정보</li>
		                    <span class="line">|</span>
						</ul>
					</div>
				</div>
				
				<div class="footer">
					<div class="footer_container">
						<div class="footer_left">
							<img src="resources/img/SOJ.png">
						</div>
						<div class="footer_right">
							(주) SOJ     대표이사 : OOO
							<br>
							사업자등록번호: ooo-oo-ooooo
							<br>
							대표전화 : oooo-oooo(발신자 부담전화)
							<br>
							<br>
							COPYRIGHT(C) <strong>kimvampa.tistory.com</strong>    ALL RIGHTS RESERVED.
	 					</div>
	 				</div>	
	 					<div class="clearfix"></div>
				
				</div>
			</div>
	</div>
</div>
	
</body>
</html>