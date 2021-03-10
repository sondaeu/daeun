package ani.project.hotel.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.powerlink;
@Repository
public class HotelBoardDAOImple implements HotelBoardDAO {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(HotelBoardDAOImple.class);
	private static final String NAMESPACE =
			"ani.project.hotel.HotelBoardMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(HotelBoardVO vo) {
		LOGGER.info("insert() 호출");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(HotelBoardVO vo) {
		LOGGER.info("update() 호출");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(int numHotel) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete", numHotel);
	}

	@Override
	public List<AllInfoVO> select() {
		LOGGER.info("select() 호출");
		return sqlSession.selectList(NAMESPACE + ".select_all");
	}

	@Override
	public HotelBoardVO select(int numHotel) {
		LOGGER.info("select() 호출 : numHotel = " + numHotel);
		return sqlSession.selectOne(NAMESPACE + ".select_by_numHotel", numHotel);
	}

	@Override
	public List<HotelBoardVO> selectByinfoHotel(String infoHotel) {
		LOGGER.info("selectByinfoHotel() : infoHotel = " + infoHotel);
		infoHotel = "%" + infoHotel + "%";
		return sqlSession.
				selectList(NAMESPACE + ".select_by_info", infoHotel);
	}



	@Override
	public HotelBoardVO selectNum(String id, String titleHotel) {
		Map<String, String> args = new HashMap<String, String>();
		args.put("id", id);
		args.put("titleHotel", titleHotel);
		LOGGER.info("selectNum() 호출" + id + titleHotel);
		return sqlSession.selectOne(NAMESPACE + ".select_numhotel", args);
	}

	@Override
	public int getTotalNums() {
		
		return sqlSession.selectOne(NAMESPACE+ ".total_count");
	}
	
	@Override
    public int CheckUpdate(HotelBoardVO vo) {

        return sqlSession.update(NAMESPACE + ".admin_update", vo);
    }

	@Override
	public List<HotelBoardVO> selectById(String id) {
		return sqlSession.selectList(NAMESPACE + ".select_by_id", id);
	}

	@Override
	public List<HotelBoardVO> powerlinkSelect(powerlink criteria) {
		LOGGER.info("select() 호출 : page = " + criteria.getPage());
		return sqlSession.selectList(NAMESPACE + ".paging_powerlink", criteria);
	}
	
	@Override
	public int getTotalNums(PageCriteria criteria) {
		return sqlSession.selectOne(NAMESPACE+ ".total_count", criteria);
	}
	
	@Override
	public List<HotelBoardVO> select(PageCriteria criteria) {
		LOGGER.info("select() 호출 : start = " + criteria.getStart() + ", end = " + criteria.getEnd());
		return sqlSession.selectList(NAMESPACE + ".paging", criteria);
	}
	
	

}
