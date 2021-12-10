package com.store.service;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.dao.QnaDao;
import com.store.qna.Qna;

@Service
public class QnaService {
	
	@Autowired
	QnaDao qnaDao;
	
	public String registerQna(Qna qna) {
		qna.setWriteDate(LocalDateTime.now());
		//임시 테스트용
		qna.setMemberId("usedtobe");
		
		
		int cnt = qnaDao.insertQna(qna);
		if (cnt == 1) {
			return "등록 완료";
		} else {
			return "등록 실패";
		}
	}
	
}
