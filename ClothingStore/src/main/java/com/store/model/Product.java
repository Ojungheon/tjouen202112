package com.store.model;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class Product {
	/* 상품 id */
	private int id;
	/* 상품 이름 */
	private String name;
	/* 상품 분류 */
	private String category;
	/* 상품 브랜드 */
	private String brand;
	/* 상품 제작일 */
	private LocalDate prodDate;
	/* 상품 가격 */
	private int price;
	/* 상품 운송비 */
	private int deliveryPrice;
	/* 상품 할인률 */
	private int discountRate;
	/* 상품 소개 */
	private String introduction;
	/* 상품 등록 날짜 */
	private LocalDateTime regDate;
	/* 상품 수정 날짜 */
	private LocalDateTime updateDate;
	public Product(int id, String name, String category, String brand, LocalDate prodDate, int price, int deliveryPrice,
			int discountRate, String introduction, LocalDateTime regDate, LocalDateTime updateDate) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.brand = brand;
		this.prodDate = prodDate;
		this.price = price;
		this.deliveryPrice = deliveryPrice;
		this.discountRate = discountRate;
		this.introduction = introduction;
		this.regDate = regDate;
		this.updateDate = updateDate;
	}
	public Product() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public LocalDate getProdDate() {
		return prodDate;
	}
	public void setProdDate(LocalDate prodDate) {
		this.prodDate = prodDate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDeliveryPrice() {
		return deliveryPrice;
	}
	public void setDeliveryPrice(int deliveryPrice) {
		this.deliveryPrice = deliveryPrice;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public LocalDateTime getRegDate() {
		return regDate;
	}
	public void setRegDate(LocalDateTime regDate) {
		this.regDate = regDate;
	}
	public LocalDateTime getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(LocalDateTime updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ", brand=" + brand + ", prodDate="
				+ prodDate + ", price=" + price + ", deliveryPrice=" + deliveryPrice + ", discountRate=" + discountRate
				+ ", introduction=" + introduction + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
}
