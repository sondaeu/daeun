package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.persistence.HistoryDAO;
import ani.project.hotel.persistence.MemberDAO;

@Service
public class MemberServiceImple implements MemberService {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(MemberService.class);
	
	@Autowired
	private MemberDAO dao;
	
	@Autowired
	private HistoryDAO HistoryDAO;
	
	@Override // ȸ�� ����
	public int createMember(MemberVO vo) {
		LOGGER.info("createMember() ȣ��");
		return dao.insertMember(vo);
	}

	@Override // id �ߺ� üũ
	public int readMember(String id) {
		LOGGER.info("readMember() ȣ�� : id = " + id);
		return dao.checkId(id);
	}
		
	@Override
	public MemberVO login(MemberVO vo) throws Exception{
		LOGGER.info("read login() ȣ��");
		return dao.login(vo);
	}

	@Override
	public MemberVO read(String id) {
		// TODO Auto-generated method stub
		return dao.select(id);
	}

	@Override
	public int updateName(MemberVO vo) {
		LOGGER.info("updateName() ȣ��");
		return dao.updateName(vo);
	}

	@Override
	public int updateContact(MemberVO vo) {
		LOGGER.info("updateContact() ȣ��");
		return dao.updateContact(vo);
	}

	@Override
	public int updateEmail(MemberVO vo) {
		LOGGER.info("updateEmail() ȣ��");
		return dao.updateEmail(vo);
	}

	@Override
	public int updateAddress(MemberVO vo) {
		LOGGER.info("updateAddress() ȣ��");
		return dao.updateAddress(vo);
	}

	@Override
	public int updateNote(MemberVO vo) {
		LOGGER.info("updateAddress() ȣ��");
		return dao.updateNote(vo);
	}

	@Override
	public int updatePassword(MemberVO vo) {
		LOGGER.info("updatePassword() ȣ��");
		return dao.updatePassword(vo);
	}

	@Override
	public int deleteMember(String id) {
		LOGGER.info("deleteMember() ȣ��");
		return dao.deleteMember(id);
	}

	@Override
	public List<HistoryVO> historyRead(String id) {
		LOGGER.info("historyRead() ȣ��");
		return HistoryDAO.selectById(id);
	}

	@Override
	public List<FavoritesVO> favoritesRead(String id) {
		LOGGER.info("historyRead()() ȣ��");
		return HistoryDAO.selectByIdFavorites(id);
	}

	@Override
	public int deleteFavorites(int numFavorites) {
		LOGGER.info("deleteFavorites() ȣ��");
		return HistoryDAO.deletefavorites(numFavorites);
	}

	@Override
	public int deleteByIdFavorites(String id) {
		LOGGER.info("deleteFavorites() ȣ��");
		return HistoryDAO.deleteByIdfavorites(id);
	}

	@Override
	public int updateBirthday(MemberVO vo) {
		// TODO Auto-generated method stub
		return dao.updateBirthday(vo);
	}

	@Override
	public int updateAnimals(MemberVO vo) {
		// TODO Auto-generated method stub
		return dao.updateAnimals(vo);
	}
	
	@Override
	public MemberVO readId(MemberVO vo) {
		LOGGER.info("deleteFavorites() ȣ�� : name = " + vo.getName() + ", email = " + vo.getEmail());
		return dao.selectByNameEmail(vo);
	}
	
	@Override
	public MemberVO readPw(MemberVO vo) {
		LOGGER.info("deleteFavorites() ȣ�� : id = " + vo.getId() + ", email = " + vo.getEmail());
		return dao.selectByIdEmail(vo);
	}

	@Override // id �ߺ� üũ
	public int readMemberId(String id) {
		LOGGER.info("readMemberId() ȣ�� : id = " + id);
		return dao.checkId(id);
	}

	@Override // email �ߺ� üũ
	public int readMemberEmail(String email) {
		LOGGER.info("readMemberEmail() ȣ�� : email = " + email);
		return dao.checkEmail(email);
	}
	
	
}