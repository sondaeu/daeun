package ani.project.hotel;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.PageMaker;
import ani.project.hotel.service.HotelBoardService;

/**
 * Handles requests for the application home page.
 */



@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		
		return "aniHotel";
	}
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Autowired
	private HotelBoardService hotelboardService;
	
	@GetMapping("/main/aniHotel")
    public void hotel(Model model, Integer page, Integer perPage) {
        logger.info("hotel ȣ??");
        PageCriteria criteria = new PageCriteria();
        criteria.setNumsPerPage(12);
        if(page != null) {
            criteria.setPage(page);
        } 
        if(perPage != null) {
            criteria.setNumsPerPage(perPage);
        }
            criteria.setOrder("star");
        List<HotelBoardVO> list = hotelboardService.read(criteria);
        model.addAttribute("list", list);



        PageMaker maker = new PageMaker();
        maker.setCriteria(criteria);
        maker.setTotalCount(hotelboardService.getTotalNums());
        maker.setPageData();
        int count = hotelboardService.getTotalNums();
        model.addAttribute("pageMaker", maker);
        model.addAttribute("count",count);
        System.out.println(list);
    }
	
}
