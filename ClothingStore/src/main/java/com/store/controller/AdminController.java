package com.store.controller;

import java.awt.Graphics2D;
import java.awt.PageAttributes.MediaType;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.store.model.AttachImageVO;
import com.store.model.Criteria;
import com.store.model.PageDTO;
import com.store.model.Product;
import com.store.service.AdminService;

import net.coobird.thumbnailator.Thumbnails;

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
	
	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
		logger.info("uploadAjaxAcionPOST......");
		String uploadFolder = "C:\\upload";
		
		/* 날짜 폴더 경로 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		String str = sdf.format(date);
		
		String datePath = str.replace("-", File.separator);
		
		/* 폴더 생성 */
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		/* 이미지 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();
		
		
		// 향상된 for
				for(MultipartFile multipartFile : uploadFile) {
				
				/* 이미지 정보 객체 */
				AttachImageVO vo = new AttachImageVO();
					
				/* 파일 이름 */
				String uploadFileName = multipartFile.getOriginalFilename();
				vo.setFileName(uploadFileName);
				vo.setUploadPath(datePath);
				
				/* uuid 적용 파일 이름 - 동일한 이름을 가진 파일을 저장할때 기존 파이을 덮어씌우지 않게 함 */
				String uuid = UUID.randomUUID().toString();
				vo.setUuid(uuid);
				
				uploadFileName = uuid + "_" + uploadFileName;
				
				/* 파일 위치, 파일 이름을 합친 file 객체 */
				File saveFile = new File(uploadPath, uploadFileName);
				
				/* 파일 저장 */
				try {
					multipartFile.transferTo(saveFile);
					
					/* 썸네일 생성(ImageIO) */
					/*
					File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
					
					BufferedImage bo_image = ImageIO.read(saveFile);
						
						//비율
						double ratio = 3;
						//넓이 높이
						int width = (int) (bo_image.getWidth() / ratio);
						int height = (int) (bo_image.getHeight() / ratio);
					BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
					
					Graphics2D graphic = bt_image.createGraphics();
					
					graphic.drawImage(bo_image, 0, 0, width, height, null);
					
					ImageIO.write(bt_image, "png", thumbnailFile);
					*/
					
					/* 방법 2*/
					File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
					
					Thumbnails.of(saveFile)
					.size(160, 160)
					.toFile(thumbnailFile);
				
				}catch (Exception e) {
					e.printStackTrace();
				}
				
				list.add(vo);
			
		}
				ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
				
				return result;		
	}
	

}
