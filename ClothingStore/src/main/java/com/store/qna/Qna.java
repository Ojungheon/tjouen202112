package com.store.qna;

import java.time.LocalDateTime;

public class Qna {
	private int id;
	private int customerId;
	private int productId;
	private int optionId;
	private String category;
	private String title;
	private String message;
	private LocalDateTime writeDate;
	private String password;
	public Qna() {}
	public Qna(int id, int customerId, int productId, int optionId, String category, String title, String message,
			LocalDateTime writeDate, String password) {
		super();
		this.id = id;
		this.customerId = customerId;
		this.productId = productId;
		this.optionId = optionId;
		this.category = category;
		this.title = title;
		this.message = message;
		this.writeDate = writeDate;
		this.password = password;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getOptionId() {
		return optionId;
	}
	public void setOptionId(int optionId) {
		this.optionId = optionId;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public LocalDateTime getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(LocalDateTime writeDate) {
		this.writeDate = writeDate;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Qna [id=" + id + ", customerId=" + customerId + ", productId=" + productId + ", optionId=" + optionId
				+ ", category=" + category + ", title=" + title + ", message=" + message + ", writeDate=" + writeDate
				+ ", password=" + password + "]";
	}
}
