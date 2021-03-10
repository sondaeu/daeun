package ani.project.hotel.service;

import java.util.List;

import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.LetterVO;

public interface LetterService {
	int insert(LetterVO vo);
	List<LetterVO> selectSend(String userId);
	List<LetterVO> selectGet(String hotelId);
	LetterVO select(int numLetter);	
	int delete(int numLetter);
	int update(LetterVO vo);
	HotelBoardVO idSelect(int numHotel);
	
}
