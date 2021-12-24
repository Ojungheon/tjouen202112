package com.store.service;

import java.util.List;

import com.store.model.Product;

public interface SearchService {

	public List<Product> selectProduct(String txtSearch);

	public int selectCountProduct(String txtSearch);

}
