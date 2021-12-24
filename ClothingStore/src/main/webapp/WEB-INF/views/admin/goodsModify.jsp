<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsModify.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
 <script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>
<body>
	<div class="wrapper">
        <div class="wrap">
            <!-- gnv_area -->    
            <div class="top_gnb_area">
                <ul class="list">    
                    <li><a href="/main">메인 페이지</a></li>
                    <li><a href="/member/logout.do">로그아웃</a></li>
                    <li>고객센터</li>            
                </ul>
            </div>
            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>관리자 페이지</span>
                
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
                <!-- 네비영역 -->
                <div class="admin_navi_wrap">
                  <ul>
                      <li >
                          <a class="admin_list_01" href="/admin/goodsEnroll">상품 등록</a>
                      </li>
                      <li>
                          <a class="admin_list_02" href="/admin/goodsManage">상품 관리</a>
                      </li>
                      <li>
                          <a class="admin_list_05">회원 관리</a>                            
                      </li>                                                                                             
                  </ul>
                </div>
                	<div class="admin_content_wrap">
                    	<div class="admin_content_subject"><span>상품 등록</span></div>
							 <div class="admin_content_main">
		                    	<form action="/admin/goodsModify" method="post" id="modifyForm">
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 이름</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="name" value="${goodsInfo.name }">
		                    				<span class="ck_warn name_warn">상품 이름을 입력해주세요.</span>
		                    			</div>
		                    		</div>
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>카테고리</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="category" value="${goodsInfo.category}">
		                    				<span class="ck_warn cate_warn">카테고리를 입력해주세요.</span>
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>브랜드</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="brand" value="${goodsInfo.brand}">
		                    				<span class="ck_warn brand_warn">브랜드명을 입력해주세요.</span>
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 생산일</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="prodDate" autocomplete="off" readonly="readonly">
		                    				<span class="ck_warn prodDate_warn">생산일을 선택해주세요.</span>
		                    			</div>
		                    		</div>             
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>가격</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="price" value="${goodsInfo.price}">
		                    				<span class="ck_warn price_warn">가격을 입력해주세요.</span>
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>운송비</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="deliveryPrice" value="${goodsInfo.price}">
		                    				<span class="ck_warn delivery_warn">운송비를 입력해주세요.</span>
		                    			</div>
		                    		</div>               
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>할인률</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="dicountRate" value="${goodsInfo.discountRate}">
		                    				<span class="ck_warn discount_warn">상품 할인율을 입력해주세요.</span>
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 소개</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<textarea name="introduction" id="goodsIntro_textarea">${goodsInfo.introduction}</textarea>
		                    				<span class="ck_warn goodsIntro_warn">상품 소개를 입력해주세요.</span>
		                    			</div>
		                    		</div>          		
		                    		<input type="hidden" name = 'id' value="${goodsInfo.id }">
		                   		</form>
		                   			<div class="btn_section">
		                   				<button id="cancelBtn" class="btn">취 소</button>
			                    		<button id="modifyBtn" class="btn modify_btn">수 정</button>
			                    	</div> 
		                    </div>
		                    
		                   	<form id="moveForm" action="/admin/goodsManage" method="get" >
		 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
								<input type="hidden" name="amount" value="${cri.amount}">
								<input type="hidden" name="keyword" value="${cri.keyword}">
								<input type="hidden" name='bookId' value="${goodsInfo.bookId}">
                			</form>        
						</div>
					</div>
                
         
                <div class="clearfix"></div>
        </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->
</body>
</html>