package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.powerlink;

public interface HotelBoardDAO {
	int insert(HotelBoardVO vo); // 등록
	int update(HotelBoardVO vo); // 업데이트
	int delete(int numHotel); // 삭제
	List<AllInfoVO> select(); // 전체 찾기
	HotelBoardVO select(int numHotel); // 상세정보
	List<HotelBoardVO> powerlinkSelect(powerlink criteria); // 파워링크 검색
	List<HotelBoardVO> selectByinfoHotel(String infoHotel); // 세부 검색
	List<HotelBoardVO> selectById(String id); // 아이디 검색
	HotelBoardVO selectNum(String id, String titleHotel);
	int getTotalNums();
	int CheckUpdate(HotelBoardVO vo);
	public abstract List<HotelBoardVO> select(PageCriteria criteria);
	int getTotalNums(PageCriteria criteria);
}

