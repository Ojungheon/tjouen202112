package com.store.dao;

import java.util.List;

import com.store.qna.Qna;

public interface QnaDao {

	public int insertQna(Qna qna);

	public int selectCountQna();

	public List<Qna> selectQnaPerPage(int firstRow, int qnaCountPerPage);

	public Qna selectOneById(int id);
	
}
