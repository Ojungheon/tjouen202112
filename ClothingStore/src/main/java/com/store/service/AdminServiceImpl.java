package com.store.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.mapper.AdminMapper;
import com.store.model.Product;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;
	
	@Override
	public void productEnroll(Product product) {

		adminMapper.productEnroll(product);
	}
	
	
}
