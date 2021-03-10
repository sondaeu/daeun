package ani.project.hotel.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

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
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ani.project.hotel.ProUtil.ProMainList;
import ani.project.hotel.ProUtil.ProMainList.ProResultList;
import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.service.MemberService;
import ani.project.hotel.service.PurchaseService;

@Controller
@RequestMapping(value = "/pronext")
public class PurchaseController {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(PurchaseController.class);	
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Autowired
	private MemberService MemberService;
	
	@Autowired
	private PurchaseService purchaseService;
	
	// ResponseEntity �� ���� Ÿ�� ����
	@PostMapping("/pay")
	public void PayPOST(@RequestBody ProMainList list, RedirectAttributes reAttributes, HttpSession session)
	{
		System.out.println("ProMainList : " + list.getProList());
		ArrayList<ProResultList> mainList = (ArrayList<ProResultList>) list.getProList();
		for(ProResultList l : mainList) {
			LOGGER.info(l.getNameProlist());
		}
		System.out.println("mainList : " +mainList);
		session.setAttribute("mainList", mainList);
//		reAttributes.addFlashAttribute("mainList", mainList);
//		return "redirect:/pronext/pay";
		
	}	
	// ajax���� url�� �̵�/�� �����ϱ�
    @GetMapping("/pay") 
    public void PayGET(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
       LOGGER.info("loginGet() ȣ��");
       LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
       HttpSession session = req.getSession();
       if(session.getAttribute("mainList").toString().length() < 10) {
           model.addAttribute("alert", "false");
       } else {
       model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
       String id = (String) session.getAttribute("SessionId");
       String auth = (String) session.getAttribute("SessionAuth");
       System.out.println("sessionId : " +id);
       System.out.println("sessionAuth : " +auth);
       MemberVO vo = MemberService.read(id);
       System.out.println(vo);
       model.addAttribute("alert", "true");
       model.addAttribute("MemberVO", vo);
       }
   }
	
	// ���� �޾ƿ� ���� ���� ����
	@PostMapping("/purchase")
	public String PurchasePOST(HistoryVO vo) {
		System.out.println(vo);
		for(int i = 1; i < vo.getNumProlist().length; i++) {
			vo.setNumPro(vo.getNumProlist()[i]);
			vo.setTimePro(vo.getTimeProlist()[i]);
			vo.setPricePurchase(vo.getPricePurchaselist()[i]);
			purchaseService.insert(vo);
		}
		return "redirect:/member/reservationList";
	}
	
	@PostMapping("/favoritesPurchase")
	public String favoritesPurchasePOST(FavoritesVO vo,HttpServletRequest req, RedirectAttributes rttr) {
		System.out.println("favoritesVO : " +vo);
		int result = 0;
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("SessionId");
		for(int i = 1; i < vo.getNumProlist().length; i++) {
			vo.setNumPro(vo.getNumProlist()[i]);
			vo.setTimePro(vo.getTimeProlist()[i]);
			vo.setPricePurchase(vo.getPricePurchaselist()[i]);
			vo.setNumHotel(vo.getNumHotelList()[i]);
			vo.setTitleHotel(vo.getTitleHotelList()[i]);
			result = purchaseService.purchaseInsert(vo);
		}
		System.out.println("result : "+ result);
		if(result == 1) {
			MemberService.deleteByIdFavorites(id);
			
		}
		
		return "redirect:/member/reservationList";
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
	
	
	@PostMapping("/favorites")
	@ResponseBody
	public void FavoritesPOST(@RequestBody ProMainList list, RedirectAttributes reAttributes, HttpSession session)
	{
		String id = (String) session.getAttribute("SessionId");
		String titleHotel = list.getProList().get(0).getTitleHotel();
		String hotelImg = list.getProList().get(0).getHotelImg();
		System.out.println("id : " + id);
		FavoritesVO vo = new FavoritesVO();
		vo.setId(id);
		vo.setTitleHotel(titleHotel);
		vo.setHotelImg(hotelImg);
		ArrayList<ProResultList> favoritesList = (ArrayList<ProResultList>) list.getProList();
		for (int i = 0; i < list.getProList().size(); i++) {
			int numPro = Integer.parseInt(list.getProList().get(i).getNumProlist());
			vo.setNumPro(numPro);
			int timePro = Integer.parseInt(list.getProList().get(i).getTimePro());
			vo.setTimePro(timePro);
			System.out.println("vo : " + vo);
			purchaseService.favoritesInsert(vo);
			
			
		}
		System.out.println("favoritesList : " + favoritesList);
		session.setAttribute("favoritesList", favoritesList);
		
	}
	
	// ResponseEntity �� ���� Ÿ�� ����
	@PostMapping("/payment")
	public void paymentPOST(@RequestBody ProMainList list, RedirectAttributes reAttributes, HttpSession session)
	{
		System.out.println("ProMainList : " + list.getProList());
		ArrayList<ProResultList> mainList = (ArrayList<ProResultList>) list.getProList();
		for(ProResultList l : mainList) {
			LOGGER.info(l.getNameProlist());
		}
		System.out.println("mainList : " +mainList);
		session.setAttribute("mainList", mainList);
		
	}	
	// ajax���� url�� �̵�/�� �����ϱ�
    @GetMapping("/payment") 
    public void paymentGET(String url, Model model, HttpServletRequest req, RedirectAttributes rttr) {
       LOGGER.info("loginGet() ȣ��");
       LOGGER.info("url : " + url); // ���� ���(�α����� ���� �Դ�)�� �� ���
       HttpSession session = req.getSession();
       if(session.getAttribute("mainList").toString().length() < 10) {
           model.addAttribute("alert", "false");
       } else {
       model.addAttribute("targetUrl", url); // login.jsp�� url ���� ����
       String id = (String) session.getAttribute("SessionId");
       String auth = (String) session.getAttribute("SessionAuth");
       System.out.println("sessionId : " +id);
       System.out.println("sessionAuth : " +auth);
       MemberVO vo = MemberService.read(id);
       System.out.println(vo);
       model.addAttribute("alert", "true");
       model.addAttribute("MemberVO", vo);
       }
   }
    
    @DeleteMapping("/{numHistory}")
	public ResponseEntity<String> delete(@PathVariable("numHistory") int numHistory) {
		ResponseEntity<String> entity = null;
		try {
			purchaseService.deletenumHistory(numHistory);
			entity = new ResponseEntity<String>("success", HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<String>("fail", HttpStatus.OK);
		}
		return entity;
	}
    
}
