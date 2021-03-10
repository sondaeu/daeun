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

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.ReviewCriteria;
import ani.project.hotel.pageutil.ReviewMaker;
import ani.project.hotel.service.ReviewService;

@Controller
@RequestMapping(value = "/review")
public class ReviewController {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ReviewController.class);
	
	@Autowired
	private ReviewService reviewService;
	
	@PostMapping()
	public ResponseEntity<Integer> ReviewinsertPOST(@RequestBody ReviewVO vo) {
		LOGGER.info(vo.toString());
		vo.setTitleReview("title");
		int result;
		System.out.println("받아온 별점 : " + vo.getStar());
		try {
			result = reviewService.insert(vo);
			System.out.println("결과 값 : " + result);
			return new ResponseEntity<Integer>(result, HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<Integer>(0, HttpStatus.OK);
		}
	}
	
	@GetMapping("/all/{numHotel}")
	public ResponseEntity<List<ReviewVO>> readReview(@PathVariable("numHotel") int numHotel,Model model, Integer page, Integer perPage) {			
		System.out.println("numHotel : " +numHotel);
		ReviewCriteria criteria = new ReviewCriteria();
		criteria.setNumHotel(numHotel);
		System.out.println("리뷰 numHotel : "+ criteria);
		if(page != null) {
			criteria.setPage(page);
		} 
		if(perPage != null) {
			criteria.setNumsPerPage(perPage);
		}
		List<ReviewVO> list = reviewService.read(criteria, numHotel);
		return new ResponseEntity<List<ReviewVO>>(list, HttpStatus.OK);
	}	
	
	@GetMapping("/paging/{numHotel}")
	public ResponseEntity<ReviewMaker> ReviewMaker(@PathVariable("numHotel") int numHotel,Model model, Integer page, Integer perPage) {			
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
		

		ReviewMaker maker = new ReviewMaker();
		
		maker.setCriteria(criteria);
		maker.setTotalCount(reviewService.getTotalNums(numHotel));
		maker.setPageData();
		System.out.println("리뷰 메이커 : " + maker);
		return new ResponseEntity<ReviewMaker>(maker, HttpStatus.OK);
	}	
	
	@DeleteMapping("/{numReview}")
	public ResponseEntity<String> deleteReview(@PathVariable("numReview") int numReview, @RequestBody ReviewVO vo) {
		LOGGER.info("numHotel = " + vo.getNumHotel());
		ResponseEntity<String> entity = null;
		try {
			reviewService.delete(numReview);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	@PutMapping("/{numReview}")
	public ResponseEntity<String> updateReview(@PathVariable("numReview") int numReview, @RequestBody ReviewVO vo) {
		vo.setNumReview(numReview);
		System.out.println(vo);
		int result = reviewService.update(vo);
		ResponseEntity<String> entity = null;
		if(result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	} // end updateReview

}
