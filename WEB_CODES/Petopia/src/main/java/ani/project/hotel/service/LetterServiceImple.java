package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.LetterVO;
import ani.project.hotel.persistence.HotelBoardDAO;
import ani.project.hotel.persistence.LetterDAO;

@Service
public class LetterServiceImple implements LetterService{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(LetterServiceImple.class);
	
	@Autowired
	private LetterDAO dao;

	@Override
	public int insert(LetterVO vo) {
		LOGGER.info("insert() 호출");
		return dao.insert(vo);
	}


	@Override
	public LetterVO select(int numLetter) {
		LOGGER.info("select() 호출");
		return dao.select(numLetter);
	}

	@Override
	public int delete(int numLetter) {
		LOGGER.info("delete() 호출");
		return dao.delete(numLetter);
	}

	@Override
	public int update(LetterVO vo) {
		LOGGER.info("update() 호출");
		return dao.update(vo);
	}
	
	@Autowired
	private HotelBoardDAO HotelDAO;
	
	@Override
	public HotelBoardVO idSelect(int numHotel) {
		
		return HotelDAO.select(numHotel);
	}


	@Override
	public List<LetterVO> selectSend(String userId) {
		LOGGER.info("select() 호출");
		return dao.selectSend(userId);
	}


	@Override
	public List<LetterVO> selectGet(String hotelId) {
		LOGGER.info("select() 호출");
		return dao.selectGet(hotelId);
	}
	
	
}
