package ani.project.hotel.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ani.project.hotel.domain.QuestionsVO;
import ani.project.hotel.pageutil.QuestionCriteria;
import ani.project.hotel.pageutil.QuestionMaker;
import ani.project.hotel.pageutil.ReviewCriteria;
import ani.project.hotel.service.QuestionsService;

@Controller
@RequestMapping(value = "/questions")
public class QuestionsController {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(QuestionsController.class);
	
	@Autowired
	private QuestionsService questionsService;
	
	@PostMapping()
	public ResponseEntity<Integer> QuestionsInsertPOST(@RequestBody QuestionsVO vo) {
		LOGGER.info("컨트롤러 vo : " + vo.toString());
		try {
			int result = questionsService.insert(vo);
			System.out.println(result + "행 추가");
			return new ResponseEntity<Integer>(result, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
	}
	
	@GetMapping("/all/{numHotel}")
	public ResponseEntity<List<QuestionsVO>> readQuestions(@PathVariable("numHotel") int numHotel,Model model, Integer page, Integer perPage) {
		System.out.println("numHotel : " + numHotel);
		QuestionCriteria criteria = new QuestionCriteria();
		criteria.setNumHotel(numHotel);
		System.out.println("문의 numHotel : "+ criteria);
		if(page != null) {
			criteria.setPage(page);
		} 
		if(perPage != null) {
			criteria.setNumsPerPage(perPage);
		}
		List<QuestionsVO> list = questionsService.read(criteria, numHotel);
		System.out.println("리스트값 : " + list);
		return new ResponseEntity<List<QuestionsVO>>(list, HttpStatus.OK);
	}
	
	@PutMapping("/{numQt}")
	public ResponseEntity<String> updateQuestions(@PathVariable("numQt") int numQt, @RequestBody QuestionsVO vo) {
		vo.setNumQt(numQt);
		int result = questionsService.update(vo);
		ResponseEntity<String> entity = null;
		if(result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@DeleteMapping("/{numQt}")
	public ResponseEntity<String> deleteQuestions(@PathVariable("numQt") int numQt, @RequestBody QuestionsVO vo) {
		ResponseEntity<String> entity = null;
		try {
			questionsService.delete(numQt);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@GetMapping("replyAll/{numQtReply}")
	public ResponseEntity<List<QuestionsVO>> readQuestionsReply(@PathVariable("numQtReply") int numQtReply) {
		List<QuestionsVO> list = questionsService.selectReply(numQtReply);
		return new ResponseEntity<List<QuestionsVO>>(list, HttpStatus.OK);
	}
	
	@GetMapping("/paging/{numHotel}")
	public ResponseEntity<QuestionMaker> QuestionMaker(@PathVariable("numHotel") int numHotel,Model model, Integer page, Integer perPage) {			
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
		

		QuestionMaker maker = new QuestionMaker();
		
		maker.setCriteria(criteria);
		maker.setTotalCount(questionsService.getTotalNums(numHotel));
		maker.setPageData();
		System.out.println("문의 메이커 : " + maker);
		return new ResponseEntity<QuestionMaker>(maker, HttpStatus.OK);
	}	
	
}
