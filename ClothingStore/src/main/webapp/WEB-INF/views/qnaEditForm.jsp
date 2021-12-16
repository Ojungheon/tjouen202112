<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>질문답변수정</title>
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
			<div class="qnaArea">
				<h4>Q&A 게시판</h4>
				<hr>
				<div class="qnaList">
					<form action="qnaEdit" name="editQna" method="post">
						<input type="hidden" id="id" name="id" value="${qEdit.id }">
						<input type="hidden" id="memberId" name="memberId" value="${qEdit.memberId }">
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
									<td><input type="text" name="title" id="title" value="${qEdit.title }"></td>
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
									<td><textarea rows="30" cols="120" name="message" id="message">${qEdit.message }</textarea></td>
								</tr>
								<tr>
									<td>비밀번호</td>
									<td><input type="password" name="password" id="password">※글작성시 입력한 비밀번호를 입력하세요.</td>
								</tr>
							</tbody>
						</table>
						<input type="hidden" id="writeDate" name="writeDate" value="${qEdit.writeDate }">
						<input type="submit" value="글수정">
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