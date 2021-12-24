package com.store.service;

import java.util.List;

import com.store.model.Criteria;
import com.store.model.Product;

public interface AdminService {
	
	/* 상품 등록 */
	public void productEnroll(Product product);
	
	/* 상품 리스트 */
	public List<Product> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);
	
	/* 상품 조회 페이지 */
	public Product goodsGetDetail(int id);
}
