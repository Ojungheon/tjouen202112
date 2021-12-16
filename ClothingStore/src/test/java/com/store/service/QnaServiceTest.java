package com.store.service;

import static org.junit.Assert.*;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.store.qna.Qna;
import com.store.qna.QnaListView;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class QnaServiceTest {
	
	@Autowired
	QnaService qnaService;

	@Test
//	@Ignore
	public void registerTest() {
		//카테고리 무작위로 글을 등록하기
		for (int i = 1; i <= 10000; i++) {
			Qna qna = new Qna();
			qna.setMemberId("test"+i);
			qna.setProductId(i);
			qna.setOptionId(i);
			
			switch ((int)(9999*Math.random()+1) % 5) {
			case 0:
				qna.setCategory("상품문의");
				break;

			case 1:
				qna.setCategory("주문/배송문의");
				break;

			case 2:
				qna.setCategory("교환/반품문의");
				break;

			case 3:
				qna.setCategory("입금/결제문의");
				break;

			case 4:
				qna.setCategory("기타문의");
				break;
			}
			qna.setTitle("문의사항"+i);
			qna.setMessage("문의내용"+i);
			qna.setPassword("passwordUsage"+i);
			
			assertEquals("등록 완료", qnaService.registerQna(qna));
			
			
		}
		
	}
	
	@Test
	@Ignore
	public void select테스트() {
		int pageNumber = 1;
		String category = "전체";
		QnaListView qnaListView = qnaService.viewQnaList(pageNumber, category);
		
		assertNotNull(qnaListView);
		System.out.println(qnaListView.getCurrentPage());
		System.out.println(qnaListView.getFirstRow());
		System.out.println(qnaListView.getPageTotalCount());
		System.out.println(qnaListView.getQnaCountPerPage());
		System.out.println(qnaListView.getQnaTotalCount());
	}

}
