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
/* .qnaArea{
	height: 700px;
} */
table{
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
			<div class="qnaArea">
				<h4>Q&A 게시판</h4>
				<hr>
				<div class="qnaList">
					<form action="qnaWrite" method="post">
						<table>
							<tbody>
								<tr>
									<td>제목</td>
									<td><input type="text" name="title"></td>
								</tr>
								<tr>
									<td>작성자</td>
									<td></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea rows="30" cols="120" name="message"></textarea></td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td><input type="password" name="password"></td>
								</tr>
							</tbody>
						</table>
						<input type="submit" value="글쓰기">
					</form>
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