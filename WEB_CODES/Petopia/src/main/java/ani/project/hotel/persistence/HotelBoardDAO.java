package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.powerlink;

public interface HotelBoardDAO {
	int insert(HotelBoardVO vo); // ���
	int update(HotelBoardVO vo); // ������Ʈ
	int delete(int numHotel); // ����
	List<AllInfoVO> select(); // ��ü ã��
	HotelBoardVO select(int numHotel); // ������
	List<HotelBoardVO> powerlinkSelect(powerlink criteria); // �Ŀ���ũ �˻�
	List<HotelBoardVO> selectByinfoHotel(String infoHotel); // ���� �˻�
	List<HotelBoardVO> selectById(String id); // ���̵� �˻�
	HotelBoardVO selectNum(String id, String titleHotel);
	int getTotalNums();
	int CheckUpdate(HotelBoardVO vo);
	public abstract List<HotelBoardVO> select(PageCriteria criteria);
	int getTotalNums(PageCriteria criteria);
}

