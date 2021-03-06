package ani.project.hotel.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.pageutil.AdminMemberCriteria;
import ani.project.hotel.pageutil.AdminMemberPageMaker;
import ani.project.hotel.service.AdminService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;

	@GetMapping("/checklist")
	public void GetMain(Model model) { // 관리자 승인전 리스트
		List<AllInfoVO> list = adminService.read();
		model.addAttribute("list", list);
		System.out.println("list : " + list.toString());
	}
	
	@PutMapping("/{numHotel}")
	public ResponseEntity<String> update(HotelBoardVO vo) {
		ResponseEntity<String> entity = null;
		try {
			vo.setCheckHotel(1);
			System.out.println("값" + vo);
			adminService.update(vo);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@DeleteMapping("/{numHotel}")
	public ResponseEntity<String> delete(@PathVariable("numHotel") int numHotel) {
		ResponseEntity<String> entity = null;
		try {
			adminService.delete(numHotel);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@GetMapping("/memberList")
	public void adminMemberList(Model model, Integer page, Integer perPage,
							String conditions, String personal, String owner, String manager, String keyword, String deletion) {
		AdminMemberCriteria criteria = new AdminMemberCriteria();
		
		if(page != null) {
			criteria.setPage(page);
		} 
		if(perPage != null) {
			criteria.setNumsPerPage(perPage);
		}
		if(conditions != null) {
			criteria.setConditions(conditions);
		}
		if(personal != null) {
			criteria.setPersonal(personal);
		}
		if(owner != null) {
			criteria.setHotel(owner);
		}
		if(manager != null) {
			criteria.setManager(manager);
		}
		if(keyword != null) {
			criteria.setKeyword(keyword);
		}
		if(deletion != null) {
			criteria.setDeletion(deletion);
		}
		
		System.out.println("personal = " + personal);
		System.out.println("owner = " + owner);
		System.out.println("manager = " + manager);
		System.out.println("keyword = " + keyword);
		System.out.println("conditions = " + conditions);
		System.out.println("deletion = " + deletion);
		
		List<MemberVO> list = adminService.readMember(criteria);
		model.addAttribute("memberList", list);
		
		AdminMemberPageMaker maker = new AdminMemberPageMaker();
		maker.setCriteria(criteria);
		maker.setTotalCount(adminService.getTotalNumsOfMember(criteria));
		maker.setPageData();
		int count = adminService.getTotalNumsOfMember(criteria);
		model.addAttribute("memberPageMaker", maker);
		model.addAttribute("memberCount",count);
		System.out.println(list);
	}
	
	@RequestMapping(value = "/memberUpdate", method= {RequestMethod.GET, RequestMethod.POST})
	public void memberUpdatePopUp(Model model, HttpServletRequest request) {
		LOGGER.info("memberUpdatePopUp() 호출");
	
		String id = request.getParameter("id");
		String page = request.getParameter("page");
		LOGGER.info("id=" + id + "page=" + page);
		
		MemberVO vo = adminService.getMember(id);
		model.addAttribute("memberVO", vo);
		model.addAttribute("page", page);
		System.out.println(vo);
	}
	
	@RequestMapping(value = "/memberPostcode", method = { RequestMethod.GET, RequestMethod.POST })
	public void memberPostcodePopUp() {
		LOGGER.info("memberPostcodePopUp() 호출");
	}
	
	@GetMapping("/updateMember")
	public void updateMemberGET(MemberVO vo, int page, HttpServletResponse response) throws IOException {
		LOGGER.info("update() 호출 : vo = " + vo);
		int result = adminService.updateMember(vo);
		if (result == 1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('수정이 완료되었습니다.');");
			out.println("opener.parent.location.reload();");
			out.println("window.open('','_self').close();");
			out.println("</script>");
			out.flush();
			out.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script type='text/javascript'>");
			out.println("alert('수정을 실패했습니다.');");
			out.println("window.open('','_self').close();");
			out.println("</script>");
			out.flush();
			out.close();
		}
	}
	
	@GetMapping("/deleteMember")
	public String deleteMember(String id, String page) {
		LOGGER.info("deleteMember() 호출 : id = " + id + ", page = " + page);
		int result = adminService.deleteMember(id);
		LOGGER.info("result = " + result);
		
		return "redirect:/admin/memberList?page=" + page;
	}
	
	
	@PostMapping("/deleteMember_all")
	@ResponseBody
	public int deleteMember_all(@RequestBody String sel_deleteMem_p) {
		LOGGER.info("deleteMember_all() 호출 : " + sel_deleteMem_p);
		int result = 1;
		String aa = sel_deleteMem_p;
		String[] sel_deleteMem = aa.split(",");
		
		for(int i=0; i<sel_deleteMem.length; i++) {
			LOGGER.info("sel_deleteMem["+i+"] = " + sel_deleteMem[i]);
			String id = sel_deleteMem[i];
			result = adminService.deleteMember(id);
		}
		
		//int result = adminService.deleteMember_all(sel_deleteMem);
		LOGGER.info("result = " + result);
		return result;
	}
	
}
