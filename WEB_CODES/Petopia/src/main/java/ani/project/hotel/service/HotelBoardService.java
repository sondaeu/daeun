package ani.project.hotel.service;

import java.util.List;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.powerlink;


public interface HotelBoardService {
	int insert(HotelBoardVO vo);
	int update(HotelBoardVO vo);
	int delete(int numHotel);
	HotelBoardVO read(int numHotel);
	List<HotelBoardVO> read(String id);
	List<HotelBoardVO> selectByinfoHotel(String infoHotel);
	List<HotelBoardVO> powerlinkread(powerlink criteria); 
	HotelBoardVO selectNum(String id, String titleHotel);
	int getTotalNums();
	public abstract List<HotelBoardVO> read(PageCriteria criteria);
	int getTotalNums(PageCriteria criteria);
}
