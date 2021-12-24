package com.store.mapper;

import java.util.List;

import com.store.model.Product;

public interface SearchMapper {

	public List<Product> selectProduct(String txtSearch);

	public int selectCountProduct(String txtSearch);

}
