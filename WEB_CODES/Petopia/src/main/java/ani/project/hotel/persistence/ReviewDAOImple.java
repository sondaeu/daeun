package ani.project.hotel.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.ReviewCriteria;
@Repository
public class ReviewDAOImple implements ReviewDAO{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ReviewDAOImple.class);
	private static final String NAMESPACE =
			"ani.project.hotel.ReviewMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(ReviewVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(ReviewVO vo) {
		LOGGER.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(int numReview) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", numReview);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete_all", numHotel);
	}

	@Override
	public List<ReviewVO> select(int numHotel) {
		LOGGER.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_all", numHotel);
	}

	@Override
	public ReviewVO selectReview(int numReview) {
		LOGGER.info("select() 호출 : numHotel = " + numReview);
		return sqlSession.selectOne(NAMESPACE + ".select_review", numReview);
	}

	@Override
	public int count(int numHotel) {
		LOGGER.info("count() 호출 : numHotel =" + numHotel);
		return sqlSession.selectOne(NAMESPACE + "review_count", numHotel);
	}

	@Override
	public List<ReviewVO> select(int numHotel,ReviewCriteria criteria ) {
		LOGGER.info("select() 호출 : page = " + criteria.getPage());
		return sqlSession.selectList(NAMESPACE + ".reviewPaging", criteria);
	}

	@Override
	public int getTotalNums(int numHotel) {
		return sqlSession.selectOne(NAMESPACE+ ".total_count", numHotel);
	}
	
	
	
	
}
