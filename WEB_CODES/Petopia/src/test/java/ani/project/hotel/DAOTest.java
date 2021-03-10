package ani.project.hotel;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.persistence.HotelBoardDAO;
	
@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml"}
) 
public class DAOTest {

	private static final Logger LOGGER = 
			LoggerFactory.getLogger(DAOTest.class);
	
	@Autowired
	private HotelBoardDAO dao;
	
	@Test
	public void testDAO() {
//		testInsert();
		testSelect();
//		testUpdate();
//		testDelete();
//		testselectByinfoHotel();
	}
	

	private void testselectByinfoHotel() {
		String infoHotel = "가"; 
		List<HotelBoardVO> list = dao.selectByinfoHotel(infoHotel);
		
		for(HotelBoardVO vo : list) {
			System.out.println(vo.toString());
		}
	}


	private void testDelete() {
		int result = dao.delete(3);
		LOGGER.info(result + "행이 삭제");
		
	}
	
	private void testInsert() {
		HotelBoardVO vo = null;
		String str = "zz"; 
//		str = vo.getInterestJoin();
//		HotelBoardVO vo1 = new HotelBoardVO(5, vo.getInterestJoin(); , "집", 1000, "하하", "z");
//		int result = dao.insert(vo1);
//		System.out.println(vo1);
//		System.out.println(result);
	} 

	private void testUpdate() {
		String[] str = {"zz"};
//		HotelBoardVO vo = new HotelBoardVO(5, "변결" , "집", 1000, "하하", "z");
//		int result = dao.update(vo);
//		System.out.println(result + "행 변경");
	}

	
	private void testSelect() {
//		HotelBoardVO vo = dao.select(5);
//		System.out.println(vo.toString());
		
//		List<HotelBoardVO> list = dao.select();
//		for (HotelBoardVO vo : list) {
//			System.out.println(vo.toString());
//		}
		HotelBoardVO x = dao.selectNum("z", "하하");
		System.out.println(x.toString());
		System.out.println("값 : " + x.getNumHotel());
		
	}
}
