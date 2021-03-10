package ani.project.hotel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ani.project.hotel.domain.HotelBoardVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
@WebAppConfiguration
public class SqlSessionTest {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(SqlSessionFactoryTest.class);
	
	private static final String NAMESPACE =
			"ani.project.hotel.HotelBoardMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
//	@Test
//	public void testInsert() {
//		HotelBoardVO vo = new HotelBoardVO(0, "����" , "��", 1000, "����", "z");
//		System.out.println(vo);
//		int result = sqlSession.insert(NAMESPACE + ".insert", vo);
//		// .insert �� mapper.xml�� id��
//		System.out.println(result);
//		LOGGER.info(result + "���� ����");
//	}
	
	@Test
	public void testselect() {
//		List<HotelBoardVO> list = sqlSession.selectList(NAMESPACE + ".select_all");
//		System.out.println(list);
//		for(HotelBoardVO vo : list) {
//			LOGGER.info(vo.toString());
//		}
		HotelBoardVO vo =sqlSession.selectOne(NAMESPACE + ".select_by_numHotel", 1);
		System.out.println(vo.toString());
	}
	
		
}
