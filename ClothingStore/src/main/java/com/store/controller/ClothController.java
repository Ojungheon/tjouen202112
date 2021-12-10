package com.store.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ClothController {

	private static final Logger logger = LoggerFactory.getLogger(ClothController.class);

	//메인페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}

	//qna페이지
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void qnaPageGET() {
		logger.info("qna 페이지 진입");
	}

	//qna게시글열람(비밀번호 입력)
	@RequestMapping(value = "/qnaPasswordCheck", method = RequestMethod.GET)
	public void qnaPasswordCheckGET() {
		logger.info("qna 열람비밀번호 입력");
	}

	//qna게시글열람(비밀번호 입력 후)
	@RequestMapping(value = "/qnaOpen", method = RequestMethod.POST)
	public void qnaOpen() {
		logger.info("qna 게시글열람");
	}

	//qna 글쓰기
	@RequestMapping(value = "/qnaWriteForm", method = RequestMethod.GET)
	public void writeQnaGET() {
		logger.info("qna 글쓰기");
	}

	//qna 글등록
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public void writeQnaPOST() {
		logger.info("qna 글쓰기 완료");
	}
	//상품 구매페이지
	@RequestMapping(value = "/productPurchase", method = RequestMethod.GET)
	public void purchaseGET() {
		logger.info("구매 페이지 테스트");
	}
	//notice페이지
	@RequestMapping(value = "/notice", method = RequestMethod.GET)
	public void noticePageGET() {
		logger.info("notice 페이지 진입");
	}
	//searchResult페이지
	@RequestMapping(value = "/searchResult", method = RequestMethod.GET)
	public void searchResultGET() {
		logger.info("searchResult 페이지 진입");
	}
}
