package com.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.mapper.SearchMapper;
import com.store.model.Product;
@Service
public class SearchServiceImpl implements SearchService{

	@Autowired
	SearchMapper searchMapper;
	
	@Override
	public List<Product> selectProduct(String txtSearch) {
		String search = "%"+txtSearch+"%";
		return searchMapper.selectProduct(search);
	}

	@Override
	public int selectCountProduct(String txtSearch) {
		String search = "%"+txtSearch+"%";
		return searchMapper.selectCountProduct(search);
	}

}
