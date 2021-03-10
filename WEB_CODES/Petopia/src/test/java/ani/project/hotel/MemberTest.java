package ani.project.hotel;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.persistence.MemberDAO;

@RunWith(SpringJUnit4ClassRunner.class) 
@WebAppConfiguration
@ContextConfiguration(
		locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml"}
)
public class MemberTest {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(MemberTest.class);
	@Autowired
	private MemberDAO dao;
	
	@Test
	public void test() {
		String id = "z";
		MemberVO vo = dao.select(id);
		System.out.println(vo.toString());
	}
}
