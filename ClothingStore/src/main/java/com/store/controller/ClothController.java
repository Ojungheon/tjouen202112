package com.store.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.store.qna.Qna;
import com.store.qna.QnaListView;
import com.store.service.QnaService;


@Controller
public class ClothController {

	private static final Logger logger = LoggerFactory.getLogger(ClothController.class);

	@Autowired
	QnaService qnaService;

	//메인페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}

	//qna게시글열람(비밀번호 입력)
	@RequestMapping(value = "/qnaPasswordCheck", method = RequestMethod.GET)
	public void qnaPasswordCheckGET(int id, Model model) {
		logger.info("qna 열람비밀번호 입력");
		model.addAttribute("id", id);
	}

	//qna게시글열람(비밀번호 입력 후)
	@RequestMapping(value = "/qnaOpen", method = RequestMethod.POST)
	public void qnaOpen(int id, String password, Model model) {
		logger.info("qna 게시글열람");
		Qna qnaCheck = qnaService.getQnaById(id);
		String passwordCheck = qnaCheck.getPassword();
		if (!password.equals(passwordCheck)) {
			model.addAttribute("result", null);
		} else {
			model.addAttribute("result", qnaCheck);
		}
	}

	//qna 글쓰기
	@RequestMapping(value = "/qnaWriteForm", method = RequestMethod.GET)
	public void writeQnaGET() {
		logger.info("qna 글쓰기");
	}

	//qna 글등록
	@RequestMapping(value = "/qnaWrite", method = RequestMethod.POST)
	public void writeQnaPOST(Qna qna, Model model) {
		logger.info("qna 글쓰기 완료");
		String result = qnaService.registerQna(qna);
		model.addAttribute("result", result);
	}

	//qna 리스트조회
	@RequestMapping(value = "/qna", method = RequestMethod.GET)
	public void listQna(String pageNumber, String category, Model model) {
		logger.info("qna 리스트조회 완료");

		int pN = 1;
		if (pageNumber != null) {
			pN = Integer.parseInt(pageNumber);
		}
		String cg = "전체";
		if (category != null) {
			cg = category;
		}
		QnaListView qnaListView = qnaService.viewQnaList(pN, cg);
		model.addAttribute("qLV", qnaListView);
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
	//긴팔티 페이지
	@RequestMapping(value = "long", method = RequestMethod.GET)
	public void longSleeveGET() {
		logger.info("긴팔티 페이지 진입");
	}
}
