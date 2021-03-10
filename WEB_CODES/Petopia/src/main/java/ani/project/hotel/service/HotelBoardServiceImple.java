package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.pageutil.PageCriteria;
import ani.project.hotel.pageutil.powerlink;
import ani.project.hotel.persistence.HotelBoardDAO;
@Service
public class HotelBoardServiceImple implements HotelBoardService{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(HotelBoardServiceImple.class);
	
	@Autowired 
	private HotelBoardDAO dao;
	
	@Override
	public int insert(HotelBoardVO vo) {
		LOGGER.info("insert() ȣ��");
		System.out.println(vo);
		return dao.insert(vo);
	}

	@Override
	public int update(HotelBoardVO vo) {
		LOGGER.info("update() ȣ��");
		return dao.update(vo);
	}

	@Override
	public int delete(int numHotel) {
		LOGGER.info("delete() ȣ��");
		return dao.delete(numHotel);
	}

	@Override
	public HotelBoardVO read(int numHotel) {
		LOGGER.info("read() ȣ�� : numHotel = " + numHotel);
		return dao.select(numHotel);
	}

	@Override
	public List<HotelBoardVO> selectByinfoHotel(String infoHotel) {
		LOGGER.info("selectByinfoHotel() ȣ�� infoHotel = " + infoHotel);
		return dao.selectByinfoHotel(infoHotel);
	}

	@Override
	public List<HotelBoardVO> powerlinkread(powerlink criteria) {
		LOGGER.info("read() ȣ�� : page = " + criteria.getPage());
		return dao.powerlinkSelect(criteria);
	}

	@Override
	public HotelBoardVO selectNum(String id, String titleHotel) {
		LOGGER.info("select() ȣ�� : id = " + id);
		return dao.selectNum(id, titleHotel);
	}

	@Override
	public int getTotalNums() {		
		return dao.getTotalNums();
	}

	@Override
	public List<HotelBoardVO> read(String id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	/* �˻���� �߰��ڵ� */
	@Override
	public int getTotalNums(PageCriteria criteria) {		
		return dao.getTotalNums(criteria);
	}
	
	/* �˻���� �߰��ڵ� */
	@Override
	public List<HotelBoardVO> read(PageCriteria criteria) {
		LOGGER.info("read() ȣ�� : page = " + criteria.getPage());
		LOGGER.info("conditions = " + criteria.getConditions() 
				+ ", district = " + criteria.getDistrictName() 
				+ ", hotel = " + criteria.getHotelName());
		return dao.select(criteria);
	}
}
