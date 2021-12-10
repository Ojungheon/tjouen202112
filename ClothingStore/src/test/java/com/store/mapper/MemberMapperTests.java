package com.store.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.store.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	
	@Autowired
	private MemberMapper memberMapper;  //MemberMapper.java 인터페이스 의존성 주입
	
	/*
	//회원가입 쿼리 테스트 메서드
	@Test
	public void memberJoin() throws Exception{
		MemberVO member = new MemberVO();
		
		member.setMemberId("spring_test");		//회원id
		member.setMemberPw("spring_test");		//회원비밀번호
		member.setMemberName("spring test");	//회원 이름
		member.setMemberMail("spring test");	//회원 메일
		member.setMemberAddr1("spring test");	//회원 우편번호
		member.setMemberAddr2("spring test");	//회원 주소
		member.setMemberAddr3("spring test");	//회원 상세주소
			
		memberMapper.memberJoin(member);		//쿼리 메서드 실행
	}
	*/
	@Test
	public void memberIdChk() throws Exception{
		String id = "admin";	// 존재하는 아이디
		String id2 = "test123";	// 존재하지 않는 아이디
		memberMapper.idCheck(id);
		memberMapper.idCheck(id2);
	}
}
