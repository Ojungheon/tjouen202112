package com.store.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.store.qna.Qna;

public interface QnaMapper {
	//글 작성
	public int insertQna(Qna qna);
	//qna 개수 조회(모든 카테고리)
	public int selectCountQna();
	//qna 리스트 조회(모든 카테고리)
	public List<Qna> selectQnaPerPage(@Param("firstRow") int firstRow,@Param("qnaCountPerPage") int qnaCountPerPage);
	//글 하나 조회
	public Qna selectOneById(int id);
	//qna 개수 조회(카테고리별)
	public int selectCountQnaWC(String category);
	//qna 리스트 조회(카테고리별)
	public List<Qna> selectQnaPerPageWC(@Param("firstRow") int firstRow,@Param("qnaCountPerPage") int qnaCountPerPage,@Param("category") String category);
	//qna 글수정
	public int updateQna(Qna qna);
	//qna 글삭제
	public int deleteQna(int id);

}
