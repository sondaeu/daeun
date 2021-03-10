package ani.project.hotel.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.java.swing.plaf.windows.resources.windows;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.LetterVO;
import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.service.LetterService;

@Controller
@RequestMapping(value = "/letter")
public class LetterController {
	private static final Logger LOGGER = LoggerFactory.getLogger(LetterController.class);

	@Autowired
	private LetterService letterService;

	@GetMapping("/send")
	public void Send(HttpServletRequest request, Model model) throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		System.out.println("보낸 id = " + userId);
		String numHotel = request.getParameter("numHotel");
		System.out.println("numHotel : "+ numHotel);
		HotelBoardVO vo = letterService.idSelect(Integer.parseInt(numHotel));
		System.out.println("받는 아이디" + vo.getId());
		String hotelId = vo.getId();
		String titleHotel = vo.getTitleHotel();
		model.addAttribute("titleHotel", titleHotel);
		model.addAttribute("userId", userId);
		model.addAttribute("hotelId", hotelId);
	}

	
	@PostMapping("/send")
	public ResponseEntity<Integer> ReviewinsertPOST(@RequestBody LetterVO vo) {
		System.out.println(vo);
		System.out.println("ajax");
		LOGGER.info("컨트롤러 vo : " + vo.toString());
		int result;
		
		try {
			result = letterService.insert(vo);
			System.out.println("결과 값 : " + result);
			return new ResponseEntity<Integer>(result, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
	}

	@GetMapping("/close")
	public void close() {
		
	}

	@GetMapping("/list")
	public void List(HttpServletRequest req, Model model) {		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		java.util.List<LetterVO> GETlist = letterService.selectGet(id);
		System.out.println("받은 메세지 : " + GETlist);
		model.addAttribute("GETlist", GETlist);

	}
	
	@GetMapping("/sendlist")
	public void sendList(HttpServletRequest req, Model model) {		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		java.util.List<LetterVO> SENDlist = letterService.selectSend(id);
		System.out.println("보낸 메세지 : " + SENDlist);
		model.addAttribute("SENDlist", SENDlist);
	}
	
	@GetMapping("/detail")
	public void detailGET(int numLetter, Model model) {
		LOGGER.info("detail() 호출");
		LetterVO vo = null;		
		vo = letterService.select(numLetter);
		System.out.println(vo);
		model.addAttribute("vo", vo);
		// 누르면 읽음 표시
		vo.setOpen(2);
		letterService.update(vo);
	}

	@DeleteMapping("/delete/{numletter}")
	public ResponseEntity<String> deleteReview(@PathVariable("numletter") int numLetter, @RequestBody LetterVO vo) {
		LOGGER.info("numHotel = " + vo.getNumLetter());
		System.out.println("aa");
		ResponseEntity<String> entity = null;
		try {
			letterService.delete(numLetter);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
}
