package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.pageutil.AdminMemberCriteria;
import ani.project.hotel.persistence.HotelBoardDAO;
import ani.project.hotel.persistence.MemberDAO;
import ani.project.hotel.persistence.ProductDAO;
import ani.project.hotel.persistence.QuestionsDAO;
import ani.project.hotel.persistence.ReviewDAO;
@Service
public class AdminServiceImple implements AdminService {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(AdminServiceImple.class);
	
	@Autowired 
	private HotelBoardDAO Hotelboarddao;
	@Autowired 
	private QuestionsDAO Questionsdao;
	@Autowired 
	private ReviewDAO Reviewdao;
	@Autowired 
	private ProductDAO Productdao;
	@Autowired 
	private MemberDAO memberdao;
	
	@Override
	public List<AllInfoVO> read() {
		
		return Hotelboarddao.select();
	}

	@Override
	public int update(HotelBoardVO vo) {
		// TODO Auto-generated method stub
		return Hotelboarddao.CheckUpdate(vo);
	}

	@Override
	public int delete(int numHotel) {
		
		return Hotelboarddao.delete(numHotel);
	}
	
	@Override
	public List<MemberVO> readMember(AdminMemberCriteria acriteria) {
		LOGGER.info("readMember() 호출 : page = " + acriteria.getPage());
		return memberdao.selectMember(acriteria);
	}

	@Override
	public int getTotalNumsOfMember(AdminMemberCriteria criteria) {
		LOGGER.info("getTotalNumsOfMember() 호출");
		return memberdao.getTotalNumsOfMember(criteria);
	}
	/* ===== 추가 ===== */
	/* ===== == ====== */

	@Override
	public MemberVO getMember(String id) {
		LOGGER.info("getTotalNumsOfMember() 호출 : id = " + id);
		return memberdao.getMember(id);
	}

	@Override
	public int updateMember(MemberVO vo) {
		LOGGER.info("updateMember() 호출 : vo = " + vo);
		return memberdao.updateMember(vo);
	}

	@Override
	public int deleteMember(String id) {
		LOGGER.info("deleteMember() 호출 : id = " + id);
		return memberdao.memberDelete(id);
	}
	
//	@Override
//	public int deleteMember_all(String[] id) {
//		LOGGER.info("deleteMember_all() 호출 : id = " + id);
//		return memberdao.memberDelete_all(id);
//	}

}
