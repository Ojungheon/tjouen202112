package com.store.model;


import java.time.LocalDateTime;
import java.util.Date;

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
	private String prodDate;
	/* 상품 가격 */
	private int price;
	/* 상품 운송비 */
	private int deliveryPrice;
	/* 상품 할인률 */
	private int discountRate;
	/* 상품 소개 */
	private String introduction;
	/* 상품 등록 날짜 */
	private Date regDate;
	/* 상품 수정 날짜 */
	private Date updateDate;
	public Product() {
		super();
	}
	public Product(int id, String name, String category, String brand, String prodDate, int price, int deliveryPrice,
			int discountRate, String introduction, Date regDate, Date updateDate) {
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
	public String getProdDate() {
		return prodDate;
	}
	public void setProdDate(String prodDate) {
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
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ", brand=" + brand + ", prodDate="
				+ prodDate + ", price=" + price + ", deliveryPrice=" + deliveryPrice + ", discountRate=" + discountRate
				+ ", introduction=" + introduction + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}
	
	
	
}
