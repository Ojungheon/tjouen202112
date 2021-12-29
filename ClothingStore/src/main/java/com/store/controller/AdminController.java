package com.store.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.store.model.Criteria;
import com.store.model.PageDTO;
import com.store.model.Product;
import com.store.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Autowired
	private AdminService adminService;
	
	/* 관리자 메인 페이지 이동 */
	@RequestMapping(value="main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception{
		
		logger.info("관리자 페이지 이동");
	}
	
	/* 상품 관리 페이지 접속 */
	@RequestMapping(value = "goodsManage", method = RequestMethod.GET)
	public void goodsManageGET(Criteria cri, Model model) throws Exception{
		logger.info("상품 관리 페이지 접속");
		
		/* 상품 리스트 데이터 */
		List list = adminService.goodsGetList(cri);
		
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}
		
		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.goodsGetTotal(cri)));
	}
	
	/* 상품 등록 페이지 접속 */
	@RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
	public void goodsEnrollGET() throws Exception{
		logger.info("상품 등록 페이지 접속");
	}
	/* 상품 등록 */
	@PostMapping("/goodsEnroll")
	public String goodsEnrollPOST(Product product, RedirectAttributes rttr) throws Exception{
		
		logger.info("productEnroll :" + product);
		
		adminService.productEnroll(product); //상품 등록 쿼리 수행
		
		rttr.addFlashAttribute("enroll_result", product.getName()); //등록 성공 메시지
		
		return "redirect:/admin/goodsManage";
	}
	
	/* 상품 조회 페이지 */
	@GetMapping({"/goodsDetail", "/goodsModify"})
	public void goodsGetInfoGET(int id , Criteria cri, Model model) {
		logger.info("goodsGetInfo()......"+ id);
		
		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);
		
		/* 조회 페이지 정보 */
		model.addAttribute("goodsInfo", adminService.goodsGetDetail(id));
	}
	
	/* 상품 정보 수정 */
	@PostMapping("/goodsModify")
	public String goodsModifyPOST(Product pro, RedirectAttributes rttr) {
		
		logger.info("goodsModifyPOST.........." + pro);
		
		int result = adminService.goodsModify(pro);
		
		rttr.addFlashAttribute("modify_result", result);
		
		return "redirect:/admin/goodsManage";		
		
	}
	
	/* 상품 정보 삭제 */
	@PostMapping("/goodsDelete")
	public String goodsDeletePOST(int id, RedirectAttributes rttr) {
		
		logger.info("goodsDeletePOST......");
		
		int result = adminService.goodsDelete(id);
		
		rttr.addFlashAttribute("delete_result", result);
		
		return "redirect:/admin/goodsManage";
	}
	

}
