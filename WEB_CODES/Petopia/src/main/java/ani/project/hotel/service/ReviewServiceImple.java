package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.ReviewCriteria;
import ani.project.hotel.persistence.ReviewDAO;
@Service
public class ReviewServiceImple implements ReviewService{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ReviewServiceImple.class);
	
	@Autowired
	private ReviewDAO dao;
	
	@Override
	public int insert(ReviewVO vo) {
		LOGGER.info("insert() 호출");
		System.out.println(vo);
		return dao.insert(vo);
	}

	@Override
	public int update(ReviewVO vo) {
		LOGGER.info("update() 호출");
		return dao.update(vo);
	}

	@Override
	public int delete(int numReview) {
		LOGGER.info("delete() 호출");
		return dao.delete(numReview);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete() 호출");
		return dao.deleteAll(numHotel);
	}

	@Override
	public List<ReviewVO> select(int numHotel) {
		LOGGER.info("read() 호출");
		return dao.select(numHotel);
	}

	@Override
	public ReviewVO selectReview(int numReview) {
		LOGGER.info("read() 호출");
		return dao.selectReview(numReview);
	}

	@Override
	public int count(int numHotel) {
		return dao.count(numHotel);
	}

	@Override
	public List<ReviewVO> read(ReviewCriteria criteria, int numHotel) {
		// TODO Auto-generated method stub
		return dao.select(numHotel, criteria);
	}

	@Override
	public int getTotalNums(int numHotel) {
		
		return dao.getTotalNums(numHotel);
	}


}
