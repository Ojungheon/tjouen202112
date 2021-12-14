package com.store.qna;

import java.util.List;

public class QnaListView {
	private int qnaTotalCount;//전체 qna 수(select count(id) from qna)
	private int qnaCountPerPage;//한 페이지당 qna 수
	private int currentPage;//현재 페이지 번호
	private int pageTotalCount;//전체 페이지 수
	private int firstRow;//가장 위 qna 번호
	private List<Qna> qnaListPerPage;//한 페이지에 보여줄 qna 리스트
	public QnaListView() {}
	public QnaListView(int qnaTotalCount, int qnaCountPerPage, int currentPage, int firstRow,
			List<Qna> qnaListPerPage) {
		super();
		this.qnaTotalCount = qnaTotalCount;
		this.qnaCountPerPage = qnaCountPerPage;
		this.currentPage = currentPage;
		this.firstRow = firstRow;
		this.qnaListPerPage = qnaListPerPage;
		//pageTotalCount
		if (qnaCountPerPage == 0) {
			pageTotalCount = 0;
		} else {
			pageTotalCount = (int) Math.ceil((double)qnaTotalCount / qnaCountPerPage);
		}
	}
	public int getQnaTotalCount() {
		return qnaTotalCount;
	}
	public int getQnaCountPerPage() {
		return qnaCountPerPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public int getPageTotalCount() {
		return pageTotalCount;
	}
	public int getFirstRow() {
		return firstRow;
	}
	public List<Qna> getQnaListPerPage() {
		return qnaListPerPage;
	}
	
}
