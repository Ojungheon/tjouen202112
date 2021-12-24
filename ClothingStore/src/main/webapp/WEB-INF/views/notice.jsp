<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice.jsp</title>
<link rel="stylesheet" href="resources/css/main.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
 ul, ol, li { list-style:none; margin:0; padding:0; }
   
    ul.myMenu {}
    ul.myMenu > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; border:1px solid #eee;  text-align:center; position: relative;}
    ul.myMenu > li:hover { background:#fff; }
    ul.myMenu > li ul.community_sub { display:none; position: absolute; top:30px; left:0; }
    ul.myMenu > li:hover ul.community_sub {display: block;}
    ul.myMenu > li ul.community_sub > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; text-align:center; }
    ul.myMenu > li ul.community_sub > li:hover { background:#fff; }
    
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
				<form action="/searchResult" name="searchRun">
					<table class="search_table">
						<tbody>
							<tr class="search_box">
								<td class="search_input"><input class="search_input_box" type="text" name="txtSearch" id="txtSearch"></td>
								<td class="run_search"><button class="search_button">검색</button></td>
							</tr>
						</tbody>
					</table>
				</form>
				<script>
					let search = document.searchRun;
					searchRun.onsubmit = function(){
						let getSearch = document.getElementById("txtSearch");
						let searchValue = getSearch.value.trim();
						if(searchValue == ""){
							alert("검색어를 입력하세요.");
							getSearch.focus();
							return false;
						}
					}
				</script>
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
			<h3>공지사항&이벤트</h3>
			<hr>
			<p>공지사항&이벤트 입니다.
			<div class="noticeList">
				<table>
					<thead>
						<tr>
							<th style="width: 50px">번호</th>
							<th style="width: 1100px">제목</th>
							<th style="width: 200px">작성자</th>
							<th style="width: 200px">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center">공지</td>
							<td style="text-align: left; padding-left: 30px;">★SOJ 회원등급 혜택★</td>
							<td style="text-align: center">관리자</td>
							<td style="text-align: center">2021-12-06</td>
						</tr>
						<tr>
							<td style="text-align: center">1</td>
							<td style="text-align: left; padding-left: 30px;">앱 다운 혜택</td>
							<td style="text-align: center">관리자</td>
							<td style="text-align: center">2021-12-08</td>
						</tr>
						
						
					</tbody>
				</table>
				<a href="qnaWriteForm">글쓰기</a>
			</div>
				<div class="foot_bar_area">
					<h1>foot area</h1>
				</div>
			</div>
		</div>
	</div>
</body>
</html>