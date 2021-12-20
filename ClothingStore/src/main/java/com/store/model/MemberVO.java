package com.store.model;

public class MemberVO {

	//회원 id
	private String member_id;
	
	//회원 비밀번호
	private String member_pw;
	
	//회원 이름
	private String member_name;
	
	//회원 이메일
	private String member_mail;
	
	//회원 우편번호
	private String member_addr1;
	
	//회원 주소
	private String member_addr2;
	
	//회원 상세주소
	private String member_addr3;
	
	// 관리자 구분(0:일반사용자, 1:관리자)
	private int adminCk;
	
	//등록일자
	private int regDate;
	
	//회원 돈
	private int money;
	
	//회원 포인트
	private int point;

	public String getMemberId() {
		return member_id;
	}

	public void setMemberId(String memberId) {
		this.member_id = memberId;
	}

	public String getMemberPw() {
		return member_pw;
	}

	public void setMemberPw(String memberPw) {
		this.member_pw = memberPw;
	}

	public String getMemberName() {
		return member_name;
	}

	public void setMemberName(String memberName) {
		this.member_name = memberName;
	}

	public String getMemberMail() {
		return member_mail;
	}

	public void setMemberMail(String memberMail) {
		this.member_mail = memberMail;
	}

	public String getMemberAddr1() {
		return member_addr1;
	}

	public void setMemberAddr1(String memberAddr1) {
		this.member_addr1 = memberAddr1;
	}

	public String getMemberAddr2() {
		return member_addr2;
	}

	public void setMemberAddr2(String memberAddr2) {
		this.member_addr2 = memberAddr2;
	}

	public String getMemberAddr3() {
		return member_addr3;
	}

	public void setMemberAddr3(String memberAddr3) {
		this.member_addr3 = memberAddr3;
	}

	public int getAdminCk() {
		return adminCk;
	}

	public void setAdminCk(int adminCk) {
		this.adminCk = adminCk;
	}

	public int getRegDate() {
		return regDate;
	}

	public void setRegDate(int regDate) {
		this.regDate = regDate;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	@Override
	public String toString() {
		return "MemberVO [memberId=" + member_id + ", memberPw=" + member_pw + ", memberName=" + member_name
				+ ", memberMail=" + member_mail + ", memberAddr1=" + member_addr1 + ", memberAddr2=" + member_addr2
				+ ", memberAddr3=" + member_addr3 + ", adminCk=" + adminCk + ", regDate=" + regDate + ", money=" + money
				+ ", point=" + point + "]";
	}

	
	
}