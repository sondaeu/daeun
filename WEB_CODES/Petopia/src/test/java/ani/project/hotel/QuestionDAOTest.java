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

import ani.project.hotel.domain.ProductVO;
import ani.project.hotel.domain.QuestionsVO;
import ani.project.hotel.persistence.ProductDAO;
import ani.project.hotel.persistence.QuestionsDAO;

@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml"}
) 
public class QuestionDAOTest {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(QuestionDAOTest.class);
	
	@Autowired
	private QuestionsDAO dao;
		
	@Test
	public void testDAO() {
		testInsert();
//		testSelect();
//		testUpdate();
//		testDelete();
		testreply();
	}
	private void testDelete() {
		int result = dao.delete(3);
		LOGGER.info(result + "행이 삭제");
		
	}
	
	private void testInsert() {
////		QuestionsVO vo = new QuestionsVO(0, 60, "dk", null, "t", 1, "졸림", "id");
//		int result = dao.insert(vo);
//		System.out.println(result);
		
	} 

	private void testUpdate() {
//		QuestionsVO vo = new QuestionsVO(3, 5, "z", "수정함", null, "true", 1, "졸려");
		
//		int result = dao.update(vo);
//		System.out.println(result + "행 변경");
	}

	private void testreply() {
		List<QuestionsVO> list = dao.selectReply(23);
		System.out.println(list);
		for (QuestionsVO vo : list) {
			System.out.println(vo.toString());
		}
	}
	
	private void testSelect() {
//		HotelBoardVO vo = dao.select(10);
//		System.out.println(vo.toString());
		
		List<QuestionsVO> list = dao.select(5, 1);
		for (QuestionsVO vo : list) {
			System.out.println(vo.toString());
		}
	}
	
	
	
}
