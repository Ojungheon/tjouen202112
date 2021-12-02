<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 검색 결괴</title>
</head>
<body>
	<h1>상세검색</h1>
	<hr>
	<fieldset>
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
    <h1>검색결과</h1>
    <select name="order2"> 
        <option value="name">상품명 순</option>
        <option value="prodDate">신상품 순</option>
        <option value="lowPrice">낮은 가격순</option>
        <option value="highPrice">높은 가격순</option>
        <option value="review">사용후기 순</option>
    </select>   정렬 
    <input type="number" name="searchResult" readonly="readonly" value="11">Items
    <hr>
</body>
</html>