package com.store.dao;

import java.util.List;

import com.store.qna.Qna;

public interface QnaDao {
	//글작성
	public int insertQna(Qna qna);
	//qna 개수 조회(모든 카테고리)
	public int selectCountQna();
	//qna 리스트 조회(모든 카테고리)
	public List<Qna> selectQnaPerPage(int firstRow, int qnaCountPerPage);
	//글 하나 조회
	public Qna selectOneById(int id);
	//qna 개수 조회(카테고리별)
	public int selectCountQnaWC(String category);
	//qna 리스트 조회(카테고리별)
	public List<Qna> selectQnaPerPageWC(int firstRow, int qnaCountPerPage, String category);
	
}
