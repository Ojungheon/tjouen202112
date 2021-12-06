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
}
