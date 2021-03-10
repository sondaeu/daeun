package ani.project.hotel.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.ProductVO;
@Repository
public class ProductDAOImple implements ProductDAO {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ProductDAOImple.class);
	private static final String NAMESPACE =
			"ani.project.hotel.ProductMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(ProductVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(ProductVO vo) {
		LOGGER.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int updateSold(ProductVO vo) {
		LOGGER.info("update_sold() 호출");
		return sqlSession.update(NAMESPACE + ".update_soldPro", vo);
	}

	@Override
	public int delete(int numPro) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", numPro);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete_all() 호출");
		return sqlSession.delete(NAMESPACE + ".delete_numHotel", numHotel);
	}

	@Override
	public List<ProductVO> select(int numHotel) {
		LOGGER.info("select() 호출 : numHotel = " + numHotel);
		return sqlSession.selectList(NAMESPACE + ".select_by_numHotel", numHotel);
	}

}
