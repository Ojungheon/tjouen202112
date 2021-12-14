package com.store.service;

import java.time.LocalDateTime;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.store.dao.QnaDao;
import com.store.qna.Qna;
import com.store.qna.QnaListView;

@Service
public class QnaService {
	
	@Autowired
	QnaDao qnaDao;
	
	//글 등록
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
	
	//글 리스트 화면에 뿌리기
	public QnaListView viewQnaList(int pageNumber) {
		//한 페이지에 보여줄 qna 개수
		int qnaCountPerPage = 10;
		QnaListView qnaListView = null;
		
		//전체 qna 개수
		int qnaTotalCount = qnaDao.selectCountQna();
		int firstRow = 0;
		if (qnaTotalCount > 0) {
			firstRow = (pageNumber-1) * qnaCountPerPage;
		}
		
		List<Qna> qnaListPerPage = qnaDao.selectQnaPerPage(firstRow, qnaCountPerPage);
		
		qnaListView = new QnaListView(qnaTotalCount, qnaCountPerPage, pageNumber, 
				firstRow, qnaListPerPage);
		
		return qnaListView;
	}

	public Qna getQnaById(int id) {
		return qnaDao.selectOneById(id);
	}
	
}
