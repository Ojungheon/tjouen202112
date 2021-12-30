package com.store.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



import com.store.model.Product;
import com.store.qna.Qna;
import com.store.qna.QnaListView;
import com.store.service.QnaService;
import com.store.service.SearchService;


@Controller
public class ClothController {

	private static final Logger logger = LoggerFactory.getLogger(ClothController.class);

	@Autowired
	QnaService qnaService;
	@Autowired
	SearchService searchService;

	//메인페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}
	
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		logger.info("getImage()......" +fileName);
		
		File file = new File("C:\\upload\\" + fileName); // "c:\\upload\\"을 작성한 이유는 특수 문자'\'을 인식
		
		ResponseEntity<byte[]> result = null;
		
		try {
			 HttpHeaders header = new HttpHeaders();
			 
			 header.add("content-type", Files.probeContentType(file.toPath()));
			 
			 result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		return result;
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
	
	//qna 글수정하기
	@RequestMapping(value = "/qnaEditForm", method = RequestMethod.GET)
	public void editQnaGET(int id, Model model) {
		logger.info("qna 글수정 시작");
		
		Qna qna = qnaService.getQnaById(id);
		model.addAttribute("qEdit", qna);
	}
	
	//qna 글수정 반영하기
	@RequestMapping(value = "/qnaEdit", method = RequestMethod.POST)
	public void editQnaPOST(Qna qna, Model model) {
		logger.info("qna 글수정 작업");
		String result = null;
		Qna qnaBefore = qnaService.getQnaById(qna.getId());
		if (qna.getPassword().equals(qnaBefore.getPassword())) {
			result = qnaService.editQna(qna);
		} else {
			result = "비밀번호가 일치하지 않아 글수정을 할 수 없습니다.";
		}
		model.addAttribute("result", result);
	}
	
	//qna 글삭제여부 확인하기
	@RequestMapping(value = "/qnaRemoveForm", method = RequestMethod.GET)
	public void removeQnaGET(int id, Model model) {
		logger.info("qna 글삭제여부 묻기");
		
		Qna qna = qnaService.getQnaById(id);
		model.addAttribute("qRemove", qna);
	}
	
	//qna 글삭제작업
	@RequestMapping(value = "/qnaRemove", method = RequestMethod.POST)
	public void removeQnaPOST(Qna qna, Model model) {
		logger.info("qna 글삭제작업");
		
		String result = null;
		Qna qnaBefore = qnaService.getQnaById(qna.getId());
		if (qna.getPassword().equals(qnaBefore.getPassword())) {
			result = qnaService.removeQna(qna);
		} else {
			result = "비밀번호가 일치하지 않아 글을 삭제할 수 없습니다.";
		}
		model.addAttribute("result", result);
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
	public void searchResultGET(String txtSearch, Model model) {
		logger.info("searchResult 페이지 진입");
		//검색어를 사용하여 DB에서 검색을 수행
		List<Product> result = searchService.selectProduct(txtSearch);
		int count = searchService.selectCountProduct(txtSearch);
		model.addAttribute("result", result);
		model.addAttribute("count", count);
	}
	//긴팔티 페이지
	@RequestMapping(value = "long", method = RequestMethod.GET)
	public void longSleeveGET() {
		logger.info("긴팔티 페이지 진입");
	}
}
