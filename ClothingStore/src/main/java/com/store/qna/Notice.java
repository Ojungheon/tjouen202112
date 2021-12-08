package com.store.qna;

import java.time.LocalDateTime;

public class Notice {
	private int id;
	private String memberId;
	private String category;
	private String title;
	private String message;
	private LocalDateTime writeDate;
	private String password;
	public Notice(int id, String memberId, String category, String title, String message, LocalDateTime writeDate,
			String password) {
		super();
		this.id = id;
		this.memberId = memberId;
		this.category = category;
		this.title = title;
		this.message = message;
		this.writeDate = writeDate;
		this.password = password;
	}
	public Notice() {
		super();
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
		return "Notice [id=" + id + ", memberId=" + memberId + ", category=" + category + ", title=" + title
				+ ", message=" + message + ", writeDate=" + writeDate + ", password=" + password + "]";
	}
	
	
}
