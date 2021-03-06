package ani.project.hotel.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.domain.ProductVO;
import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.PageMaker;
import ani.project.hotel.pageutil.ReviewCriteria;
import ani.project.hotel.pageutil.ReviewMaker;
import ani.project.hotel.pageutil.powerlink;
import ani.project.hotel.service.HotelBoardService;
import ani.project.hotel.service.MemberService;
import ani.project.hotel.service.ProductService;
import ani.project.hotel.service.QuestionsService;
import ani.project.hotel.service.ReviewService;
import util.FileUploadUtil;


@Controller
@RequestMapping(value = "/hotelboard")
public class HotelBoardController {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(HotelBoardController.class);
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Autowired
	private HotelBoardService hotelboardService;
	
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private MemberService MemberService;
	
	@Autowired
	private QuestionsService QuestionsService;
	
	@GetMapping("/register")
	public void registerGET(Model model, MultipartFile file,HttpServletRequest req, RedirectAttributes rttr) {
		// 글 작성을 위한 기업정보 불러오기	
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO MemberVO = MemberService.read(id);
		System.out.println("MemberVO: "+MemberVO);
		model.addAttribute("MemberVO", MemberVO);	
		LOGGER.info("registerPOST() 호출");
		
	}
	
	@PostMapping("/register")
	public String registerPOST(HotelBoardVO vo, Model model, MultipartFile file) throws IOException {
		String savedFile = null;
		savedFile = FileUploadUtil.saveUploadedFile(
				uploadPath, 
				file.getOriginalFilename(), 
				file.getBytes()
				);
		
		System.out.println("register vo : " + vo.toString());
		vo.setCheckHotel(0);
		System.out.println("savedFile : " +savedFile);
		vo.setHotelImg(savedFile);
		System.out.println("result vo : "+vo);
		int result = hotelboardService.insert(vo);
		System.out.println("결과 : " + result);
		if(result == 1) {
			return "redirect:/product/myHotelList";
		} else {
			return "redirect:/hotelBoard/register";
		}			
	}
	
	@GetMapping("/list")
	public void hotelboardListGET(Model model, Integer page, Integer perPage,
			String conditions, String districtName, String hotelName,
			String checkIn, String checkOut,String order) {
		PageCriteria criteria = new PageCriteria();
		powerlink powerlinCriteria = new powerlink();
		
		if(page != null) {
			criteria.setPage(page);
		} 
		if(perPage != null) {
			criteria.setNumsPerPage(perPage);
		}
		if(checkIn != null) {
			criteria.setCheckIn(checkIn);
		}
		if(checkOut != null) {
			criteria.setCheckOut(checkOut);
		}
		if(conditions != null) {
			criteria.setConditions(conditions);
		}
		if(districtName != null) {
			criteria.setDistrictName(districtName);
		}
		if(hotelName != null) {
			criteria.setHotelName(hotelName);
		}
		if(order != null) {
			criteria.setOrder(order);
		}
		
		List<HotelBoardVO> list = hotelboardService.read(criteria);
		model.addAttribute("list", list);
		
		List<HotelBoardVO> powerLinkList = hotelboardService.powerlinkread(powerlinCriteria);
		model.addAttribute("powerLinkList", powerLinkList);
		
		System.out.println("powerLinkList : " + powerLinkList);
		
		PageMaker maker = new PageMaker();
		maker.setCriteria(criteria);
		maker.setTotalCount(hotelboardService.getTotalNums(criteria));
		maker.setPageData();
		int count = hotelboardService.getTotalNums(criteria);
		model.addAttribute("pageMaker", maker);
		model.addAttribute("count",count);
		System.out.println(list);
	}
	
	
	@GetMapping("/detail")
	public void hotelboardDetailGET(int numHotel, Model model,Integer page, Integer perPage) {
		
		
		LOGGER.info("detail() 호출 : num = " + numHotel);
		HotelBoardVO vo = hotelboardService.read(numHotel);
		String wid = vo.getId();
		MemberVO MemberVO = MemberService.read(wid);
		String animal = MemberVO.getAnimals();
		String[] animals = animal.split(",");
		
		
		
		List<ProductVO> list = productService.select(numHotel);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		System.out.println(vo);
		System.out.println(list);
		
		System.out.println("numHotel : " +numHotel);
		ReviewCriteria criteria = new ReviewCriteria();
		
		
		criteria.setNumHotel(numHotel);
		System.out.println("criteria : " + criteria);
		if(page != null) {
			criteria.setPage(page);
		} 
		if(perPage != null) {
			criteria.setNumsPerPage(perPage);
		}
		
		List<ReviewVO> reviewlist = reviewService.read(criteria, numHotel);
		
		ReviewMaker maker = new ReviewMaker();
		maker.setCriteria(criteria);
		maker.setTotalCount(reviewService.getTotalNums(numHotel));
		maker.setPageData();
		int count = reviewService.getTotalNums(numHotel);
		int questionCount = QuestionsService.getTotalNums(numHotel);
		System.out.println("pageMaker : "+maker);
		model.addAttribute("pageMaker", maker);
		model.addAttribute("questionCount",questionCount);
		model.addAttribute("count",count);
		model.addAttribute("animals",animals);
		System.out.println(count);
	}
	
	@GetMapping("/delete")	
	public String deleteGET(int numHotel) {
		int result = hotelboardService.delete(numHotel);
		System.out.println("삭제번호 : " + numHotel);
		System.out.println(result);
		if(result == 1) {
			return "redirect:/hotelboard/list";
		} else {
			return "redirect:/hotelboard/detail?numHotel=" + numHotel;
		}
	}
	
	@GetMapping("/update")
	public void updateGET(int numHotel,  Model model) {
		
		HotelBoardVO vo = hotelboardService.read(numHotel);
		System.out.println("updateVO : " + vo);
		model.addAttribute("vo", vo);
	}
	

	@PostMapping("/update")
	public String updatePOST(HotelBoardVO vo, MultipartFile file, HttpServletRequest req) throws IOException {
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {
			// 기존 파일 삭제
			File oldFile = new File(uploadPath + req.getParameter("hotelfile"));			
			File oldFile2 = new File(uploadPath + (req.getParameter("hotelfile")).replace("s_", ""));			
			oldFile.delete();
			oldFile2.delete();
			System.out.println(oldFile2);
			System.out.println(oldFile);
			// 새로 추가
			String savedFile = null;
			savedFile = FileUploadUtil.saveUploadedFile(
					uploadPath, 
					file.getOriginalFilename(), 
					file.getBytes()
					);
			vo.setHotelImg(savedFile);
		} else { // 기존 파일시
			vo.setHotelImg(req.getParameter("hotelfile"));
		}
		String num = "redirect:/hotelboard/detail?numHotel=" + vo.getNumHotel();
		System.out.println("updateVO : " + vo);
		hotelboardService.update(vo);
		return num;
	}
	
	
	// 화면에 사진이 보이기위한 코드
	@GetMapping("/display")
	public ResponseEntity<byte[]> display(String fileName) throws IOException {
		LOGGER.info("display() 호출");
		
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		
		String filePath = uploadPath + fileName;
		in = new FileInputStream(filePath);
		
		// 파일 확장자
		String extension = 
				filePath.substring(filePath.lastIndexOf(".") + 1);
		LOGGER.info(extension);
		// 응답 헤더(response header)에 Content-Type 설정
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.setContentType(util.MediaUtil.geMediaType(extension));
		
		// 데이터 전송
		entity = new ResponseEntity<byte[]> (
					IOUtils.toByteArray(in), // 파일에서 읽은 데이터
					httpHeaders, // 응답 헤더
					HttpStatus.OK
				);
		return entity;
	}
	

		
	private String saveUploadFile(MultipartFile file) {
		// UUID : 업로드하는 파일 이름이 중복되지 않도록
		UUID uuid = UUID.randomUUID();
		String savedName = uuid + "_" + file.getOriginalFilename();
		File target = new File(uploadPath, savedName); // 저장할 파일 객체 생성
		
		try {
			FileCopyUtils.copy(file.getBytes(), target);
			LOGGER.info("파일 저장 성공");
			return savedName;
		} catch (IOException e) {
			LOGGER.error("파일 저장 실패");
			return null;
		}
		
	}
	
	@GetMapping("/question")
	public void question(HotelBoardVO vo,HttpServletRequest req, RedirectAttributes rttr) {
		
	}
	
}
