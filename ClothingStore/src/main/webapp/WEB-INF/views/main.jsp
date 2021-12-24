<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcom SOJ</title>
<link rel="stylesheet" href="resources/css/main.css?after">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
<style>
 ul, ol, li { list-style:none; margin:0; padding:0; }
   
    ul.myMenu {}
    ul.myMenu > li { display:inline-block; width:120px; padding:5px 10px; background:#eee; border:1px solid #eee;  text-align:center; position: relative;}
    ul.myMenu > li:hover { background:#fff; }
    ul.myMenu > li ul.community_sub { display:none; position: absolute; top:30px; left:0; }
    ul.myMenu > li:hover ul.community_sub {display: block;}
    ul.myMenu > li ul.community_sub > li { display:inline-block; width:80px; padding:5px 10px; background:#eee; text-align:center; }
    ul.myMenu > li ul.community_sub > li:hover { background:#fff; }

</style>
<script type="text/javascript">
	$(function () {
		var cnt = 0;
		interv = setInterval(() => {
			$(".mySlides>ul").animate(
					{"margin-left":"-1080px"},500,
					function(){
						$(".mySlides>ul").css("margin-left","0px");
						$(".mySlides>ul").append($(this).children().eq(0))
					})
        }, 10000);
		$(".mySlides>a").last().click(function(){
			$(".mySlides>ul").animate(
				{"margin-left":"-1080px"},500,
				function(){
					$(".mySlides>ul").css("margin-left","0px");
					$(".mySlides>ul").append($(this).children().eq(0))
				})
		})
		$(".mySlides>a").first().click(function(){
			$(".mySlides>ul").animate(
                    {"width":"calc(1080px*5)", "margin-left":"-1080px"},
                    0,
                    function () {
                        $(".mySlides>ul").prepend($(this).children().eq(3));
                    }
                )
                $(".mySlides>ul").animate(
                    {"margin-left":"0px", "width":"calc(1080px*4)"},
                    500,
                )
		})
	})
	
</script>
</head>
<body>

<div class="wrapper">
	<div class="wrap">
		<div class="gnb_area" id="container">
			<ul class="myMenu">
				<c:if test="${member == null}">
					<li class="menu1"><a href="member/login">로그인</a></li>
					<li class="menu2"><a href="member/join">회원가입</a></li>
				</c:if>
				<c:if test="${member != null }">
					
					<li><a id="gnb_logout_button">로그아웃</a></li>
					<li class="menu3">장바구니</li>
					<li class="menu4">마이페이지</li>
					<c:if test="${member.adminCk == 1 }">
						<li><a href="/admin/main">관리자 페이지</a></li>
					</c:if>
				</c:if>
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
			<div class="login_area">
				<!-- 로그인 하지 않은 상태 -->
				<c:if test = "${member == null }">
					<div class="login_button"><a href="/member/login">로그인</a></div>
					<span><a href="/member/join">회원가입</a></span>
				</c:if>
				
				<!-- 로그인 한 상태 -->
				<c:if test="${member != null }">
					<div class="login_success_area">
						<span>회원 : ${member.memberName}</span>
						<span>충전금액 : <fmt:formatNumber value="${member.money }" pattern="\#,###.##"/></span>
						<span>포인트 : <fmt:formatNumber value="${member.point }" pattern="#,###" /></span>
						<a href="/member/logout.do">로그아웃</a>
					</div>
				</c:if>
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
							<li><a href="long">긴팔티</a></li>
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
			<fieldset>
				<div class="mySlides">
					<ul>
					    <li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1638149169.jpeg"></li>
					
		
						<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1637913097.jpg"></li>
			
			
						<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1637732092.jpg"></li>
				
			
						<li><img class="banner" src="https://image.brandi.me/home/banner/bannerImage_0_1638258239.jpeg"></li>
					</ul>
					
					<a><img src="resources/img/prev_btn.png"></a>
					<a><img src="resources/img/next_btn.png"></a>
					
				</div>
			</fieldset>
			<hr>
			<div class="best">
				<div class="title_area">
					<h3>BEST ITEM</h3><br>
					<p>이 달의 베스트 아이템을 확인해보세요.</p>
					<hr>
				</div>
				<div class="best_item_area">
					<ul class="lst_type">
						<li>
							<a href="/productPurchase">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202101/77ee04362e57ae9ef8930cfa1696a4ee.webp" width="300px" height="375px" alt=""></span>
								<em>
									1997 양기모 후드<br>
									Free<br>
									42,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202102/2b7da28f914d2c399804a445f4827d57.webp" width="300px" height="375px" alt=""></span>
								<em>브루클린 리그 후드티<br>
									주문 폭주!!*기모선택 가능<br>
									29,800원<br></em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202111/4ab6aab433d982ba6adb766669db4d91.webp" width="300px" height="375px" alt=""></span>
								<em>마틴 골덴 트임 팬츠<br>
									따뜻한 코듀로이! 핏 좋습니다.<br>
									29,900원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/20200214/6d0685cb527fd74c686a3d66129d507d.webp" width="300px" height="375px" alt=""></span>
								<em>스텐다드 와이드 팬츠<br>
									3천장 이상 판매 상품!<br>
									34,000원<br></em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202112/6d0416c23e0bb03cabddda6ea595637b.gif" width="300px" height="375px" alt=""></span>
								<em>뉴욕 자수 맨투맨<br>
									Free<br>
									38,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202008/2a8222bd478312b8ab4b4aafd6451751.webp" width="300px" height="375px" alt=""></span>
								<em>[JB]4계절 레이어드 반팔티셔츠<br>
									M,L<br>
									16,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202112/f977c5bc6ffdfb8f772b83a70e1a7322.gif" width="300px" height="375px" alt=""></span>
								<em>LAINE 기모 트레이닝 와이드팬츠<br>
									M,L<br>
									39,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202111/47a698b0637bda6296e6d8f7ae1e7377.webp" width="300px" height="375px" alt=""></span>
								<em>올데이 스탠다드 데님<br>
									S,M,L,XL<br>
									38,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202011/9da48e2d06bab6b625a5c170cc3d18a1.webp" width="300px" height="375px" alt=""></span>
								<em>퍼펙트 숏패딩<br>
									Free<br>
									47,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202109/34a89f15f74af0ef5e365828e45acff7.webp" width="300px" height="375px" alt=""></span>
								<em>데일리 스웻 맨투맨<br>
									Free<br>
									19,900원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202010/753303d950e20eb60caca60f9d53b9e8.webp" width="300px" height="375px" alt=""></span>
								<em>
								캐시미어 후리스 머플러<br>  
								Free<br>
								16,000원<br>
								</em>
							</a>
						</li>
						<li>
							<a href="#">
								<span class="thumb"><img src="https://jb-shop.kr/web/product/big/202109/5b4939a701dfcc0d5567cf427a1f14cf.webp" width="300px" height="375px" alt=""></span>
								<em>[당일발송][1+1]워싱 카고 팬츠<br>
									S,M,L,XL,2XL<br>
									39,000원<br>
								</em>
							</a>
						</li>
					</ul>
				</div>
			</div>	
				
			<div class="new"></div>
			<div class="sale"></div>
			
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
	</div> <!-- class="wrap" -->
</div>
<script>
	/* gnb_area 로그아웃 버튼 작동 */
	$("#gnb_logout_button").click(function () {
		//alert("버튼 작동");
		$.ajax({
			type:"POST",
			url:"/member/logout.do",
			success:function(data){
				alert("로그아웃 성공");
				document.location.reload();
			}
		})
	});
</script>
</body>
</html>