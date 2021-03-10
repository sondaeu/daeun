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
import ani.project.hotel.domain.ProductVO;
import ani.project.hotel.persistence.ProductDAO;

@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml"}
) 
public class ProductTestDAO {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ProductTestDAO.class);
	
	@Autowired
	private ProductDAO dao;
	
	@Test
	public void testDAO() {
//		testInsert();
		testSelect();
//		testUpdate();
//		testDelete();
	}
	


	private void testDelete() {
		int result = dao.delete(1);
		LOGGER.info(result + "행이 삭제");
		
	}
	
	private void testInsert() {
		ProductVO vo = new ProductVO(0, "아이스크립", 1000, 100, null, 5);
		int result = dao.insert(vo);
		System.out.println(result);
	} 

	private void testUpdate() {
//		ProductVO vo = new ProductVO(1, "수정", 1000, 100, null, 5);
		ProductVO vo = new ProductVO(1, "수정", 1000, 100, "true", 5);
//		int result = dao.update_sold(vo);
//		System.out.println(result + "행 변경");
	}

	
	private void testSelect() {
//		HotelBoardVO vo = dao.select(10);
//		System.out.println(vo.toString());
		
		List<ProductVO> list = dao.select(5);
		for (ProductVO vo : list) {
			System.out.println(vo.toString());
		}
	}
	
}
