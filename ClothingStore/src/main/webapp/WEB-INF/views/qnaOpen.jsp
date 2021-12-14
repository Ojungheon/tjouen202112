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
/* .qnaArea{
	height: 700px;
} */
.qnaOpen{
	border: 1px solid black;
	width: 100%;
	border-collapse: collapse;
}
table>tbody>tr>td{
	border: 1px solid black;
}
</style>
</head>
<body>
<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area">
			<a href="member/login">로그인</a>   <a href="member/join">회원가입</a>  장바구니  마이페이지  커뮤니티   <a href="qna">Q&A</a>   Review
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
			<div class="qnaArea">
				<h4>Q&A 게시판</h4>
				<hr>
				<div class="qnaList">
					<c:if test="${result == null }">
						비밀번호가 일치하지 않습니다.<br>
					</c:if>
					<c:if test="${result != null }">
						<table class="qnaOpen">
							<tbody>
								<tr>
									<td style="height:20px; width:90px;">제목</td>
									<td>${result.title }</td>
								</tr>
								<tr>
									<td style="height:20px; width:90px;">번호</td>
									<td>${result.id }</td>
								</tr>
								<tr>
									<td style="height:20px; width:90px;">작성자</td>
									<td></td>
								</tr>
								<tr>
									<td style="height:300px; width:90px;">내용</td>
									<td>
										${result.message }<br>
									</td>
								</tr>
							</tbody>
						</table>
						수정    삭제    <a href="qna">목록보기</a>
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