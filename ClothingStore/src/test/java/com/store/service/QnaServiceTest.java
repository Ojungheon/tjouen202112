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
	@Ignore
	public void registerTest() {
		
		for (int i = 1; i <= 500; i++) {
			Qna qna = new Qna();
			qna.setMemberId("test"+i);
			qna.setProductId(i);
			qna.setOptionId(i);
			qna.setCategory("category"+i);
			qna.setTitle("문의사항"+i);
			qna.setMessage("문의내용"+i);
			qna.setPassword("passwordUsage"+i);
			
			assertEquals("등록 완료", qnaService.registerQna(qna));
			
			
		}
		
	}
	
	@Test
	public void select테스트() {
		int pageNumber = 1;
		QnaListView qnaListView = qnaService.viewQnaList(pageNumber);
		
		assertNotNull(qnaListView);
		System.out.println(qnaListView.getCurrentPage());
		System.out.println(qnaListView.getFirstRow());
		System.out.println(qnaListView.getPageTotalCount());
		System.out.println(qnaListView.getQnaCountPerPage());
		System.out.println(qnaListView.getQnaTotalCount());
	}

}
