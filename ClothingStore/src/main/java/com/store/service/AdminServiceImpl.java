package com.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.mapper.AdminMapper;
import com.store.model.Criteria;
import com.store.model.Product;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public void productEnroll(Product product) {

		adminMapper.productEnroll(product);
	}

	@Override
	public List<Product> goodsGetList(Criteria cri) {
		return adminMapper.goodsGetList(cri);
	}

	@Override
	public int goodsGetTotal(Criteria cri) {
		return adminMapper.goodsGetTotal(cri);
	}

	@Override
	public Product goodsGetDetail(int id) {
		return adminMapper.goodsGetDetail(id);
	}

	@Override
	public int goodsDelete(int id) {
		return adminMapper.goodsDelete(id);
	}
	
	
}
