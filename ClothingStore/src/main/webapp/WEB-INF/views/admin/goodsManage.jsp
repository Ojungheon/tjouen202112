<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/admin/goodsManage.css?after">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
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
                      <lI>
                          <a class="admin_list_05">회원 관리</a>                            
                      </lI>                                                                                             
                  </ul>
                </div>
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>상품 관리</span></div>
	                    <div class="goods_table_wrap">
	                    	<!-- 상품 리스트 O -->
	                    	<c:if test="${listcheck != 'empty' }">
	                    		<table class = "goods_table">
	                    			<thead>
	                    				<tr>
	                    					<td class = "th_column_1">상품 번호</td>
	                    					<td class = "th_column_2">상품 이름</td>
	                    					<td class = "th_column_3">브랜드</td>
	                    					<td class = "th_column_4">카테고리</td>
	                    					<td class = "th_column_5">가격</td>
	                    					<td class = "th_column_6">등록날짜</td>
	                    				</tr>	
	              					</thead>
	              					<c:forEach items="${list }" var="list">
	              						<tr>
	              							<td><c:out value="${list.id }"></c:out></td>
	              							<td><c:out value="${list.name }"></c:out></td>
	              							<td><c:out value="${list.brand }"></c:out></td>
	              							<td><c:out value="${list.category }"></c:out></td>
	              							<td><c:out value="${list.price }"></c:out></td>
	              							<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></td>
	              						</tr>
	              					</c:forEach>
	                    		</table>
	                    	</c:if>
	                    	<!-- 상품 리스트 X -->
	                    		<c:if test="${listCheck == 'empty' }">
	                    			<div class="table-empty">
	                    				등록된 작가가 없습니다.
	                    			</div>
	                    		</c:if>
	                    </div>
                   
                </div>
                <div class="clearfix"></div>
            </div>
        
       
        
    </div>    <!-- class="wrap" -->
</div>    <!-- class="wrapper" -->

<script>
$(document).ready(function(){
	
	let eResult = '<c:out value="${enroll_result}"/>';
	
	checkResult(eResult);
	
	function checkResult(result){
		
		if(result === ''){
			return;
		}
		
		alert("상품'"+ eResult +"'을 등록하였습니다.");
		
	}

});
</script>
 
</body>
</html>
