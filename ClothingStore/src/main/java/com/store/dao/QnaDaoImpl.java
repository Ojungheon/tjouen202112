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
	
	@Override
	public int insertQna(Qna qna) {
		return qnaMapper.insertQna(qna);
	}

	@Override
	public int selectCountQna() {
		return qnaMapper.selectCountQna();
	}

	@Override
	public List<Qna> selectQnaPerPage(int firstRow, int qnaCountPerPage) {
		return qnaMapper.selectQnaPerPage(firstRow, qnaCountPerPage);
	}

	@Override
	public Qna selectOneById(int id) {
		return qnaMapper.selectOneById(id);
	}
	
}
