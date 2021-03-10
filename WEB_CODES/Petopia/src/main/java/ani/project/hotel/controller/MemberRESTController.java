package ani.project.hotel.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import ani.project.hotel.service.MemberService;

@RestController
@RequestMapping(value = "/member")
public class MemberRESTController {
	private static final Logger LOGGER = LoggerFactory.getLogger(MemberRESTController.class);

	@Autowired
	private MemberService memberService;
	
	@PostMapping("/idcheck")
	public int checkId(@RequestBody String id) {
		LOGGER.info("inputId = " + id);
		int resultId = memberService.readMemberId(id);
		LOGGER.info("result = " + resultId);
		return resultId;
	}
	
	@PostMapping("/emailcheck")
	public int checkEmail(@RequestBody String email) {
		LOGGER.info("inputEmail = " + email);
		int resultEmail = memberService.readMemberEmail(email);
		LOGGER.info("result = " + resultEmail);
		return resultEmail;
	}
	
} // end MemberRESTController
