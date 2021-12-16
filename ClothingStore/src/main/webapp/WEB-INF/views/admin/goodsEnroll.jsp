<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsEnroll.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
</script>
</head>
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
                    	<div class="admin_content_subject">
							 <div class="admin_content_main">
		                    	<form action="/admin/goodsEnroll" method="post" id="enrollForm">
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 이름</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="name">
		                    			</div>
		                    		</div>
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>카테고리</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="category">
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>브랜드</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="brand">
		                    			</div>
		                    		</div>            
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 생산일</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="prodDate">
		                    			</div>
		                    		</div>             
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>가격</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="price">
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>운송비</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="deliveryPrice">
		                    			</div>
		                    		</div>               
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>할인률</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="dicountRate">
		                    			</div>
		                    		</div>          
		                    		<div class="form_section">
		                    			<div class="form_section_title">
		                    				<label>상품 소개</label>
		                    			</div>
		                    			<div class="form_section_content">
		                    				<input name="introduction">
		                    			</div>
		                    		</div>          		
		                    	
		                   		</form>
		                   			<div class="btn_section">
		                   				<button id="cancelBtn" class="btn">취 소</button>
			                    		<button id="enrollBtn" class="btn enroll_btn">등 록</button>
			                    	</div> 
		                    </div>  
						</div>
					</div>
                
             </div>
                <div class="clearfix"></div>
       
<script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click",function(e){
	
	e.preventDefault();
	
	enrollForm.submit();
	
});

</script> 	        
      
        
  
        
    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->
 
</body>
</html>
