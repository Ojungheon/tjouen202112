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
#title{
	width: 850px;
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
					<form action="qnaWrite" name="writeQna" method="post">
						<table>
							<tbody>
								<tr>
								<!-- 상품문의, 주문/배송문의, 교환/반품문의, 입금/결제문의, 기타문의 -->
									<td>카테고리</td>
									<td>
										<select name="category" id="category">
											<option value="상품문의">상품문의
											<option value="주문/배송문의">주문/배송문의
											<option value="교환/반품문의">교환/반품문의
											<option value="입금/결제문의">입금/결제문의
											<option value="기타문의">기타문의
										</select>
									</td>
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" name="title" id="title"></td>
								</tr>
								<tr>
									<td>작성자</td>
									<td><input type="text" name="name" id="name" readonly="readonly" value="지나가는사람"></td>
								</tr>
								<tr>
									<td>상품정보</td>
									<td></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea rows="30" cols="120" name="message" id="message"></textarea></td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td><input type="password" name="password" id="password"></td>
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
<script>
	let writeQna = document.writeQna;
	writeQna.onsubmit = function(){
		let getTitle = document.getElementById("title");
		let titleValue = getTitle.value.trim();
		if(titleValue == ""){
			alert("제목을 입력하세요.");
			getTitle.focus();
			return false;
		}
		let getMessage = document.getElementById("message");
		let messageValue = getMessage.value.trim();
		if(messageValue == ""){
			alert("내용을 입력하세요.");
			getMessage.focus();
			return false;
		}
		let getPassword = document.getElementById("password");
		let passwordValue = getPassword.value.trim();
		if(passwordValue == ""){
			alert("비밀번호를 입력하세요.");
			getPassword.focus();
			return false;
		}
	}
</script>
</body>
</html>