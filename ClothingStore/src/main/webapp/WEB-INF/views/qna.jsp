<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<h4>Q&A 게시판</h4>
			<hr>
			<div class="category">
				<ul>
					<li id="all"><a href="qna?pageNumber=1&category=전체">전체</a></li>
					<li id="product"><a href="qna?pageNumber=1&category=상품문의">상품문의</a></li>
					<li id="purDeliv"><a href="qna?pageNumber=1&category=주문/배송문의">주문/배송문의</a></li>
					<li id="exchange"><a href="qna?pageNumber=1&category=교환/반품문의">교환/반품문의</a></li>
					<li id="pay"><a href="qna?pageNumber=1&category=입금/결제문의">입금/결제문의</a></li>
					<li id="other"><a href="qna?pageNumber=1&category=기타문의">기타문의</a></li>
				</ul>
			</div>
			<br>
			<hr>
			<div class="qnaList">
				<input type="text" hidden="true" id="category" name="category" value="${qLV.category }">
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
							<c:if test="${qLV.qnaTotalCount==0 }">
								<tr>
									<td style="text-align: center"></td>
									<td style="text-align: center"></td>
									<td style="text-align: center"></td>
									<td style="text-align: left; padding-left: 20px;">등록된 qna가 없습니다.</td>
									<td style="text-align: center"></td>
									<td style="text-align: center"></td>
								</tr>
							</c:if>
							<c:if test="${qLV.qnaTotalCount>0 }">
								<c:forEach var="qna" items="${qLV.qnaListPerPage }">
									<tr>
										<td style="text-align: center">${qna.id }</td>
										<td style="text-align: center">${qna.productId }</td>
										<td style="text-align: center">${qna.category }</td>
										<td style="text-align: left; padding-left: 20px;"><a href="qnaPasswordCheck?id=${qna.id }">${qna.title }</a></td>
										<td style="text-align: center"></td>
										<td style="text-align: center">${qna.writeDate }</td>
									</tr>
								</c:forEach>
							</c:if>
						</tr>
					</tbody>
				</table>
				<section>
					<c:forEach var="pageNum" begin="1" end="${qLV.pageTotalCount }">
						<c:if test="${qLV.currentPage==pageNum }">
							<strong>[${pageNum }]</strong>
						</c:if>
						<c:if test="${qLV.currentPage!=pageNum }">
							<a href="qna?pageNumber=${pageNum }&category=${qLV.category }">[${pageNum }]</a>
						</c:if>
					</c:forEach>
				</section>
				<a href="qnaWriteForm">글쓰기</a>
			</div>
			<script>
		        const all = document.getElementById("all");
		        const product = document.getElementById("product");
		        const purDeliv = document.getElementById("purDeliv");
		        const exchange = document.getElementById("exchange");
		        const pay = document.getElementById("pay");
		        const other = document.getElementById("other");
		        let category = document.getElementById("category").value;
		        console.log(category);
		        if (category == null || category == "전체") {
					choose('all');
				}
		        if (category == "상품문의") {
		        	choose('product');
				}
				if (category == "주문/배송문의") {
					choose('purDeliv');
				}
				if (category == "교환/반품문의") {
					choose('exchange');
				}
				if (category == "입금/결제문의") {
					choose('pay');
				}
				if (category == "기타문의") {
					choose('other');
				}
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