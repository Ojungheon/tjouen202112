package com.store.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.store.mapper.QnaMapper;
import com.store.qna.Qna;
@Repository
public class QnaDaoImpl implements QnaDao{

	@Autowired
	QnaMapper qnaMapper;
	//글 작성
	@Override
	public int insertQna(Qna qna) {
		return qnaMapper.insertQna(qna);
	}
	//qna 개수 조회(모든 카테고리)
	@Override
	public int selectCountQna() {
		return qnaMapper.selectCountQna();
	}
	//qna 리스트 조회(모든 카테고리)
	@Override
	public List<Qna> selectQnaPerPage(int firstRow, int qnaCountPerPage) {
		return qnaMapper.selectQnaPerPage(firstRow, qnaCountPerPage);
	}
	//글 하나 조회
	@Override
	public Qna selectOneById(int id) {
		return qnaMapper.selectOneById(id);
	}
	//qna 개수 조회(카테고리별)
	@Override
	public int selectCountQnaWC(String category) {
		return qnaMapper.selectCountQnaWC(category);
	}
	//qna 리스트 조회(카테고리별)
	@Override
	public List<Qna> selectQnaPerPageWC(int firstRow, int qnaCountPerPage, String category) {
		return qnaMapper.selectQnaPerPageWC(firstRow, qnaCountPerPage, category);
	}
	
}
