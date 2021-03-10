package ani.project.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.service.MemberService;

@Controller
@RequestMapping(value="/log")
public class LoginController {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private MemberService MemberService;
	
	@GetMapping("/login")
	public void loginGet(Model model,HttpServletRequest request) {
		String url = request.getHeader("referer");
		LOGGER.info("loginGet() 호출");
		LOGGER.info("url : " + url); // 이전 경로(로그인을 위해 왔던)의 값 출력
		model.addAttribute("url", url); // login.jsp에 url 정보 전송
	}
	
	@GetMapping("/loginalert")
	public void alertGet(String url, Model model) {
		LOGGER.info("loginalert() 호출");

	}
	

	
	@PostMapping("/login-post")
	public String loginPost(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr,Model model,String url) throws Exception {
		LOGGER.info("loginPost() 호출");
		HttpSession session = req.getSession();
		MemberVO result = MemberService.login(vo);
		System.out.println("targetUrl : " + url);
		// result = vo
		if(result != null) {
			session.setAttribute("SessionId", result.getId());
			session.setAttribute("SessionAuth", result.getAuthority());
			System.out.println("id : " +result.getId());
			System.out.println("권한 : " + result.getAuthority());
			System.out.println(result);
			if(url.equals("http://localhost:8080/hotel/log/login"))
			{
				
				return "redirect:/main/aniHotel";
			}else {
				return "redirect:"+url;
			}
		} else {
			return "redirect:/log/loginalert";
		}
		

	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest req) {
		LOGGER.info("logout() 호출");
		
		HttpSession session = req.getSession();
		session.removeAttribute("SessionId");
		session.removeAttribute("SessionAuth");
		
		return "redirect:/main/aniHotel";
	}
	
	@RequestMapping(value = "/find", method= {RequestMethod.GET, RequestMethod.POST})
	public void findIdPw() {
		LOGGER.info("findIdPw() 호출");
	}
	
	@RequestMapping(value = "/passwordfind", method= {RequestMethod.GET, RequestMethod.POST})
	public void findPw() {
		LOGGER.info("findIdPw() 호출");
	}
	
	@PostMapping("/idFind")
	public String idFindPOST(MemberVO vo, RedirectAttributes reAttr, HttpServletResponse response) throws IOException { // RedirectAttributes : 재경로 위치에 속성값을 전송하는 객체
		LOGGER.info("idFindPOST() 호출 : vo = " + vo);
		
		MemberVO result = MemberService.readId(vo);
		System.out.println(result);
		if (result != null) { 
			reAttr.addFlashAttribute("id", result.getId());
			reAttr.addFlashAttribute("idFind_result", "success");
			return "redirect:/log/successId"; 
		} else { // DB insert 실패
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('가입된 아이디가 존재하지 않습니다.'); location.href='/hotel/log/find';</script>");
			out.flush();
			out.close();
			reAttr.addFlashAttribute("idFind_result", "fail");
			return "redirect:/log/find"; 
		}
		
	}
	
	@RequestMapping(value = "/successId", method= {RequestMethod.GET, RequestMethod.POST})
	public void successId() {
	
	}
	
	@PostMapping("/pwFind")
	public String pwFindPOST(MemberVO vo, RedirectAttributes reAttr, HttpServletResponse response) throws IOException { // RedirectAttributes : 재경로 위치에 속성값을 전송하는 객체
		LOGGER.info("pwFindPOST() 호출 : vo = " + vo);
		
		MemberVO result = MemberService.readPw(vo);
		System.out.println(result);
		if (result != null) { 
			reAttr.addFlashAttribute("pw", result.getPassword());
			reAttr.addFlashAttribute("pwFind_result", "success");
			return "redirect:/log/successPw"; 
		} else { // DB insert 실패
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('입력된 값을 다시 확인해주세요.'); location.href='/hotel/log/find';</script>");
			out.flush();
			out.close();
			reAttr.addFlashAttribute("pwFind_result", "fail");
			return "redirect:/log/find"; 
		}
		
	}
	
	@RequestMapping(value = "/successPw", method= {RequestMethod.GET, RequestMethod.POST})
	public void successPw() {
	
	}
}		