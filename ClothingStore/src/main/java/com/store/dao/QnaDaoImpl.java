package com.store.dao;

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
	
}
