package com.store.qna;

import java.time.LocalDateTime;

import org.springframework.format.annotation.DateTimeFormat;

public class Qna {
	private int id;
	private String memberId;
	private int productId;
	private int optionId;
	private String category;
	private String title;
	private String message;
	@DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm:ss")
	private LocalDateTime writeDate;
	private String password;
	public Qna() {}
	public Qna(int id, String memberId, int productId, int optionId, String category, String title, String message,
			LocalDateTime writeDate, String password) {
		super();
		this.id = id;
		this.memberId = memberId;
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
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
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
		return "Qna [id=" + id + ", memberId=" + memberId + ", productId=" + productId + ", optionId=" + optionId
				+ ", category=" + category + ", title=" + title + ", message=" + message + ", writeDate=" + writeDate
				+ ", password=" + password + "]";
	}
}
