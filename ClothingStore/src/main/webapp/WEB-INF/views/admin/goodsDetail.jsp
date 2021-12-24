<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsDetail.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
</script>
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
                    	<div class="admin_content_subject"><span>상품 상세</span></div>
							 
							 <div class="admin_content_main">
							 
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 이름</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="name" value="<c:out value="${goodsInfo.name }"/>" disabled>
		                    			</div>
		                    		</div>
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>카테고리</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="category" value="<c:out value="${goodsInfo.category }"/>" disabled>
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>브랜드</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="brand" value="<c:out value="${goodsInfo.brand }"/>" disabled>
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 생산일</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="prodDate" autocomplete="off" readonly="readonly" value="<c:out value="${goodsInfo.prodDate }"/>" disabled>
		                    			</div>
		                    		</div>             
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>가격</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="price" value="<c:out value="${goodsInfo.price }"/>" disabled>
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>운송비</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="deliveryPrice"value="<c:out value="${goodsInfo.deliveryPrice }"/>" disabled>
		                    			</div>
		                    		</div>               
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>할인률</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="dicountRate" value="<c:out value="${goodsInfo.discountRate }"/>" disabled>
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 소개</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<textarea name="introduction" id="goodsIntro_textarea" disabled="disabled"> ${goodsInfo.introduction}</textarea>
		                    			</div>
		                    		</div>          		
		                    	
		                   		
		                   			<div class="btn_section">
		                   				<button id="cancelBtn" class="btn">상품 목록</button>
			                    		<button id="modifyBtn" class="btn enroll_btn">수정</button>
			                    	</div> 
		                    </div>  
		                    
		            <form id="moveForm" action="/admin/goodsManage" method="get" >
 						<input type="hidden" name="pageNum" value="${cri.pageNum}">
						<input type="hidden" name="amount" value="${cri.amount}">
						<input type="hidden" name="keyword" value="${cri.keyword}">
                	</form>
                	
                </div>
           </div>
                <div class="clearfix"></div>
        </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->
<script>
/* 목록 이동 버튼 */
$("#cancelBtn").on("click", function(e){
	e.preventDefault();
	$("#moveForm").submit();	
});	

/* 수정 페이지 이동 */
$("#modifyBtn").on("click", function(e){
	e.preventDefault();
	let addInput = '<input type="hidden" name="id" value="${goodsInfo.id}">';
	$("#moveForm").append(addInput);
	$("#moveForm").attr("action", "/admin/goodsModify");
	$("#moveForm").submit();
});	
</script>
 				
</body>
</html>