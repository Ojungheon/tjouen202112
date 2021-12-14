package com.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.store.qna.Qna;

public interface QnaMapper {

	public int insertQna(Qna qna);

	public int selectCountQna();

	public List<Qna> selectQnaPerPage(@Param("firstRow") int firstRow,@Param("qnaCountPerPage") int qnaCountPerPage);

	public Qna selectOneById(int id);

}
