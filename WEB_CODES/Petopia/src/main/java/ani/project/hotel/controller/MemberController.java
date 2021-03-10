package ani.project.hotel.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService MemberService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@PostMapping("/join")
	public String joinPOST(MemberVO vo, RedirectAttributes reAttr) { // RedirectAttributes : ���� ��ġ�� �Ӽ����� �����ϴ� ��ü
		LOGGER.info("joinPOST() ȣ��");
		LOGGER.info(vo.toString());
		System.out.println(vo);
		int result = MemberService.createMember(vo);
		LOGGER.info(Integer.toString(result));
		if (result == 1) { // DB insert ����
			// "join_result"�� Ű�̸��� ���� ������ ����
			reAttr.addFlashAttribute("join_result", "success");
			return "redirect:/log/login"; // /member/login ��η� �̵�
		} else { // DB insert ����
			reAttr.addFlashAttribute("join_result", "fail");
			return "redirect:/member/userJoinus"; // /member/join ��η� �̵�
		}
	}
	
	// ���θ��ּ� �˾�â 
	@RequestMapping(value = "/postcode", method= {RequestMethod.GET, RequestMethod.POST})
	public void postcodePopUp() {
	LOGGER.info("postcodePopUp() ȣ��");
	}
	
	
	
	@GetMapping("/aniHotel")
	public void aniHotel(String url, Model model) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����	
	}
	
	@GetMapping("/MyPage")
	public void MyPage(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO vo = MemberService.read(id);
		System.out.println(vo);
		model.addAttribute("MemberVO", vo);	
	}
	
	@GetMapping("/accommMyPage")
	public void companyMyPage(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO vo = MemberService.read(id);
		System.out.println(vo);
		model.addAttribute("MemberVO", vo);	
	}
	
	
	@GetMapping("/MyPageSelect")
    public String MyPageselect(HttpServletRequest req, RedirectAttributes rttr) {
        HttpSession session = req.getSession();
        String id = (String) session.getAttribute("SessionId");
        String auth = (String) session.getAttribute("SessionAuth");
        // 1:������, 2:����ȸ��, 3:��üȸ��
        if(auth.equals("3")) {
            return "redirect:/member/accommUpdate";
        } else if(auth.equals("1")){
            return "redirect:/admin/checklist";
        }else {
            return "redirect:/member/update";
        } 
    }
	
	
	@GetMapping("/update")
	public void update(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO vo = MemberService.read(id);
		System.out.println(vo);
		model.addAttribute("MemberVO", vo);
	}
	
	@GetMapping("/accommUpdate")
	public void accommonUpdate(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO vo = MemberService.read(id);
		System.out.println(vo);
		model.addAttribute("MemberVO", vo);
	}
	
	// �̸� ����
		@PostMapping("/updateName")
		public ResponseEntity<Integer> updateName(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			System.out.println(vo.getName());
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateName(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
		
		// ����ó ����
		@PostMapping("/updateContact")
		public ResponseEntity<Integer> updateContact(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateContact(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}	
		
		// �̸��� ����
		@PostMapping("/updateEmail")
		public ResponseEntity<Integer> updateEmail(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateEmail(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}	
		
		// �ּ� ����
		@PostMapping("/updateAddress")
		public ResponseEntity<Integer> updateAddress(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateAddress(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}	
		
		// �ڱ�Ұ� ����
		@PostMapping("/updateNote")
		public ResponseEntity<Integer> updateNote(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateNote(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
		
		@PostMapping("/updateBirthday")
		public ResponseEntity<Integer> updateBirthday(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateBirthday() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateBirthday(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
		
		// ��й�ȣ ���� Get
		@GetMapping("/updatePassword")
		public void Password(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("loginGet() ȣ��");
			LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
			model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			String auth = (String) session.getAttribute("SessionAuth");
			System.out.println("sessionId : " +id);
			System.out.println("sessionAuth : " +auth);
			MemberVO vo = MemberService.read(id);
			System.out.println(vo);
			model.addAttribute("MemberVO", vo);
		}
		
		@PostMapping("/updateAnimals")
		public ResponseEntity<Integer> updateAnimals(@RequestBody MemberVO vo,Model model, HttpServletRequest req, RedirectAttributes rttr) {
			LOGGER.info("updateName() ȣ��");
			HttpSession session = req.getSession();
			String id = (String) session.getAttribute("SessionId");
			vo.setId(id);
			System.out.println("vo : " +vo);
			int result = MemberService.updateAnimals(vo);
			if(result!=0) {
				return new ResponseEntity<Integer>(result, HttpStatus.OK);
			}
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
	
	// ��й�ȣ ���� Post
	@PostMapping("/updatePassword")
	public String updatePassword(String password,Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("updateName() ȣ��");
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		MemberVO vo = new MemberVO();
		vo.setId(id);
		vo.setPassword(password);
		System.out.println("vo : " +vo);
		int result = MemberService.updatePassword(vo);
		if(result!=0) {
			return "redirect:/member/updatePassword";
		}
			return "redirect:/member/updatePassword";
	}
	
	// ���� ���� Post
	@PostMapping("/deleteMember")
	public String delete(HttpServletRequest req, RedirectAttributes rttr) {
		
		LOGGER.info("delete ȣ��");
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		int result = MemberService.deleteMember(id);
		if(result == 1) {
			session.removeAttribute("SessionId");
			session.removeAttribute("sessionAuth");
			return "redirect:/log/login";
		}else
		{
			return "redirect:/log/login";
		}
		
		
	}
	

	@GetMapping("/userJoinus")
	public void userJoinus() {
		
	}
	
	@GetMapping("/question")
	public void question() {
		
	}
	
	@GetMapping("/note")
	public void note() {
		
	}
	
	@GetMapping("/coupon")
	public void coupon() {
		
	}
	
	@GetMapping("/reservationList")
	public void reservationList(Model model, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		List<HistoryVO> list = MemberService.historyRead(id);
		System.out.println("historyList : "+list);
		model.addAttribute("list", list);
	}
	
	@GetMapping("/attentionList")
	public void attentionList(Model model, HttpServletRequest req, RedirectAttributes rttr) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		List<FavoritesVO> favoritesList = MemberService.favoritesRead(id);
		System.out.println("favoritesList : "+favoritesList);
		model.addAttribute("list", favoritesList);
	}
	
	// ��ٱ��� ���� Post
	@PostMapping("/favoritesDelete")
	public String favoritesDelete(HttpServletRequest req, RedirectAttributes rttr, FavoritesVO vo) {
		
		LOGGER.info("delete ȣ��");
		
		int numFavorites = vo.getNumFavorites();
		System.out.println("numFavorites : "+numFavorites);
		int result = MemberService.deleteFavorites(numFavorites);
		if(result == 1) {
			return "redirect:/member/attentionList";
		}else
		{
			return "redirect:/member/attentionList";
		}
		
		
	}
	
	@GetMapping("/delete")
	public void delete(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
		LOGGER.info("loginGet() ȣ��");
		LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
		model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		String auth = (String) session.getAttribute("SessionAuth");
		System.out.println("sessionId : " +id);
		System.out.println("sessionAuth : " +auth);
		MemberVO vo = MemberService.read(id);
		System.out.println(vo);
		model.addAttribute("MemberVO", vo);
	}

	@GetMapping("/accommJoinus")
	public void accommJoinus() {
		
	}
	
	@GetMapping("/newMember")
	public void newMember() {
	
	}
	
	// ȭ�鿡 ������ ���̱����� �ڵ�
	@GetMapping("/display")
	public ResponseEntity<byte[]> display(String fileName) throws IOException {
		LOGGER.info("display() ȣ��");
		
		ResponseEntity<byte[]> entity = null;
		InputStream in = null;
		
		String filePath = uploadPath + fileName;
		in = new FileInputStream(filePath);
		
		// ���� Ȯ����
		String extension = 
				filePath.substring(filePath.lastIndexOf(".") + 1);
		LOGGER.info(extension);
		// ���� ���(response header)�� Content-Type ����
		HttpHeaders httpHeaders = new HttpHeaders();
		httpHeaders.setContentType(util.MediaUtil.geMediaType(extension));
		
		// ������ ����
		entity = new ResponseEntity<byte[]> (
					IOUtils.toByteArray(in), // ���Ͽ��� ���� ������
					httpHeaders, // ���� ���
					HttpStatus.OK
				);
		return entity;
	}
}