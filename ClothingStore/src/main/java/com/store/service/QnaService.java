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
	public QnaListView viewQnaList(int pageNumber, String category) {
		//한 페이지에 보여줄 qna 개수
		int qnaCountPerPage = 10;
		QnaListView qnaListView = null;
		
		if (category.equals("전체")) {
			//전체 qna 개수
			int qnaTotalCount = qnaDao.selectCountQna();
			int firstRow = 0;
			if (qnaTotalCount > 0) {
				firstRow = (pageNumber-1) * qnaCountPerPage;
			}
			
			List<Qna> qnaListPerPage = qnaDao.selectQnaPerPage(firstRow, qnaCountPerPage);
			
			qnaListView = new QnaListView(qnaTotalCount, qnaCountPerPage, pageNumber, 
					firstRow, category, qnaListPerPage);
		} else {
			//해당 카테고리 qna 개수
			int qnaTotalCountWC = qnaDao.selectCountQnaWC(category);
			int firstRow = 0;
			if (qnaTotalCountWC > 0) {
				firstRow = (pageNumber-1) * qnaCountPerPage;
			}
			List<Qna> qnaListPerPageWC = qnaDao.selectQnaPerPageWC(firstRow, qnaCountPerPage, category);
			
			qnaListView = new QnaListView(qnaTotalCountWC, qnaCountPerPage, pageNumber, firstRow, category, qnaListPerPageWC);
		}
		
		
		return qnaListView;
	}

	public Qna getQnaById(int id) {
		return qnaDao.selectOneById(id);
	}

	public String editQna(Qna qna) {
		int cnt = qnaDao.updateQna(qna);
		if (cnt == 1) {
			return "글수정을 완료하였습니다.";
		} else {
			return "글수정을 완료하지 못하였습니다.";
		}
	}

	public String removeQna(Qna qna) {
		int cnt = qnaDao.deleteQna(qna.getId());
		if (cnt == 1) {
			return "글을 삭제하였습니다.";
		} else {
			return "글을 삭제하지 못하였습니다.";
		}
	}
	
}
