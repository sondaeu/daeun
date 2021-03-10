package ani.project.hotel.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;

@Repository
public class HistoryDAOImple implements HistoryDAO{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(HistoryDAOImple.class);
	private static final String NAMESPACE= 
			"ani.project.hotel.HistoryMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(HistoryVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}
	
	public int purchaseInsert(FavoritesVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public List<HistoryVO> selectById(String id) {
		LOGGER.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_by_id", id);
	}

	@Override
	public int favoritesInsert(FavoritesVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".favorites_insert", vo);
	}

	@Override
	public List<FavoritesVO> selectByIdFavorites(String id) {
		LOGGER.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_by_id_userFavorites", id);
	}

	@Override
	public int deletefavorites(int numFavorites) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete_favorites", numFavorites);
	}

	@Override
	public int deleteByIdfavorites(String id) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete_by_id_favorites", id);
	}

	@Override
	public int deleteBynumHistory(int numHistory) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".deleteNumHistory", numHistory);
	}

}
