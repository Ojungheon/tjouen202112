<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 검색 결과</title>
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
	
	.detailSearch{
		width: 100%;
		height: 100px;
	}
	.searchResult{
		width: 100%;
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
			<h1>상세검색</h1>
			<hr>
			<fieldset class="detailSearch">
				상품분류 <select name="category">
					<option value="new">new</option>
					<option value="best">best</option>
					<option value="sale">sale</option>
					<option value="top">상의</option>
					<option value="outer">아우터</option>
					<option value="bottom">하의</option>
					<option value="set">세트</option>
					<option value="etc">잡화</option>
				</select><br>
		        검색조건 <select name="condition">
		            <option>상품명</option>
		            <option>브랜드</option>
		        </select>
		        <input type="text" placeholder="검색어 입력"><br>
		        정렬기준 <select name="order1">
		            <option value="name">상품명 순</option>
		            <option value="prodDate">신상품 순</option>
		            <option value="lowPrice">낮은 가격순</option>
		            <option value="highPrice">높은 가격순</option>
		            <option value="review">사용후기 순</option>
		        </select><br>
		        가격대 <input type="number" name="minPrice">~<input type="number" name="maxPrice"> <button>상품검색</button>
			</fieldset>
		    <div class="searchResult">
			    <h1>검색결과</h1>
			    <select name="order2"> 
			        <option value="name">상품명 순</option>
			        <option value="prodDate">신상품 순</option>
			        <option value="lowPrice">낮은 가격순</option>
			        <option value="highPrice">높은 가격순</option>
			        <option value="review">사용후기 순</option>
			    </select>   정렬 
			    <input type="number" name="searchResult" readonly="readonly" value="${count }">Items
			    <hr>
			    <div class="resultZone">
			    	<c:if test="${count == 0 }">
			    		검색결과가 없습니다.
			    	</c:if>
			    	<c:if test="${count > 0 }">
				    	${result }
			    	</c:if>
			    </div>
		    </div>
		</div>
		<div class="foot_bar_area">
			<h1>foot area</h1>
		</div>
	</div>
</div>
	
</body>
</html>