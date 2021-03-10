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

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.persistence.ReviewDAO;

@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml"}
)
public class ReciewDAOTest {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ReciewDAOTest.class);
	
	@Autowired
	private ReviewDAO dao;
	
	@Test
	public void testDAO() {
		testInsert();
//		testSelect();
//		testUpdate();
//		testDelete();
	}
	


	private void testDelete() {
		int result = dao.delete(1);
		LOGGER.info(result + "행이 삭제");		
	}
	
	private void testInsert() {
		ReviewVO vo = new ReviewVO(0, 5, "zzzzzzz", 5, "리뷰", "입니다", null);
		int result = dao.insert(vo);
		System.out.println(result);
	} 

	private void testUpdate() {
		ReviewVO vo = new ReviewVO(1, 5, "z", 5, "변경", "입니다", null);
		int result = dao.update(vo);
		System.out.println(result + "행 변경");
	}

	
	private void testSelect() {
//		ReviewVO vo = dao.select_review(1);
//		System.out.println(vo.toString());
//		PageCriteria criteria;
//		List<ReviewVO> list = dao.select(5, criteria);
//		for (ReviewVO vo : list) {
//			System.out.println(vo.toString());
//		}
	}
}
