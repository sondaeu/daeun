package ani.project.hotel.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.ProductVO;
import ani.project.hotel.service.HotelBoardService;
import ani.project.hotel.service.ProductService;

@Controller
@RequestMapping(value = "/product")
public class ProductController {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ProductController.class);
	

	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private HotelBoardService hotelboardService;
	
	@GetMapping("/register")
	public void productregisterGET() {		
	}
	
	@PostMapping("/register")
	public String productregisterPOST(ProductVO vo,int numHotel) {
		LOGGER.info("productregisterPOST() ȣ??");
		
		for(int i = 0; i < vo.getNameProlist().length; i ++) {
			vo.setNamePro(vo.getNameProlist()[i]);
			vo.setPricePro(vo.getPriceProlist()[i]);
			vo.setSalePro(vo.getSaleProlist()[i]);
			System.out.println(i + "?? vo : "+vo);
			productService.insert(vo);				
			}		
		return "redirect:/product/list?numHotel="+numHotel;
		
	}	
	
	@GetMapping("/myHotelList")
	public void myHotelListGET(Model model, HttpServletRequest req, RedirectAttributes rttr) {		
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		List<HotelBoardVO> list = hotelboardService.read(id);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	
	@GetMapping("/list")
	public void listGET(Model model, HttpServletRequest req, RedirectAttributes rttr,int numHotel) {
		System.out.println(numHotel);
		List<ProductVO> list = productService.select(numHotel);
		HotelBoardVO vo = hotelboardService.read(numHotel);
		System.out.println("productList : "+ list);
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
	}	
	
	@GetMapping("all/{numHotel}")
	public ResponseEntity<List<ProductVO>> readProduct(@PathVariable("numHotel") int numHotel){
		List<ProductVO> list = productService.select(numHotel);
		return new ResponseEntity<List<ProductVO>>(list, HttpStatus.OK);
	}
	
	@GetMapping("/delete")
	public String delete(int numHotel,int numPro) {
		System.out.println("product delete : " +" numHotel "+ numHotel+" numPro : " + numPro);
		int result = productService.delete(numPro);
		if(result == 1) {
			System.out.println("??ǰ ???? ????");
			return "redirect:/product/list?numHotel="+numHotel;
		}else
		{
			return "redirect:/product/list?numHotel="+numHotel;
		}
	}
	
	@PutMapping("/{numPro}")
	public ResponseEntity<String> update(@PathVariable("numPro") int numPro, @RequestBody ProductVO vo) {
		vo.setNumPro(numPro);
		LOGGER.info("vo = " + vo);
		int result = productService.update(vo);
		ResponseEntity<String> entity = null;
		if(result == 1) {
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		}else {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
	
	
}
