package com.store.mapper;

import static org.junit.Assert.*;

import java.time.LocalDate;
import java.time.LocalDateTime;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.store.model.Product;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Transactional
public class AdminMapperTest {
	
	@Autowired
	private AdminMapper adminMapper;

	@Test
	public void productEnroll() throws Exception {
		Product product = new Product();
		
		product.setId(0);
		product.setName("상의1");
		product.setCategory("아우터");
		product.setBrand("우일신");
		product.setProdDate("2021-03-18");
		product.setPrice(50000);
		product.setDeliveryPrice(2500);
		product.setDiscountRate(10);
		product.setIntroduction("우일신 아우터 상의1");
		
		
		adminMapper.productEnroll(product);
		
		
		
	}

}
