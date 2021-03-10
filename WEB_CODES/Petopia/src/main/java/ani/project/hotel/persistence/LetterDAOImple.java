package ani.project.hotel.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.LetterVO;

@Repository
public class LetterDAOImple implements LetterDAO {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(LetterDAOImple.class);
	private static final String NAMESPACE =
			"ani.project.hotel.LetterMapper";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insert(LetterVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	

	@Override
	public LetterVO select(int numLetter) {
		LOGGER.info("select() 호출");
		return sqlSession.selectOne(NAMESPACE + ".selectDetail", numLetter);
	}

	@Override
	public int delete(int numLetter) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", numLetter);
	}

	@Override
	public int update(LetterVO vo) {
		LOGGER.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".updateOpen", vo);
	}



	@Override
	public List<LetterVO> selectSend(String userId) {
		return sqlSession.selectList(NAMESPACE + ".selectSend", userId);
	}



	@Override
	public List<LetterVO> selectGet(String hotelId) {
		return sqlSession.selectList(NAMESPACE + ".selectGet", hotelId);
	}
	
	
	
}
