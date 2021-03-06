package ani.project.hotel.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.pageutil.AdminMemberCriteria;


@Repository
public class MemberDAOImple implements MemberDAO {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(MemberDAOImple.class);
	private static final String NAMESPACE = 
			"ani.project.hotel.MemberMapper";

	@Autowired
	private SqlSession sqlSession;	
	
	@Override // 회원 가입
	public int insertMember(MemberVO vo) {
		LOGGER.info("insertMember() 호출");
		return sqlSession.insert(NAMESPACE + ".insertMember", vo);
	}

	@Override // id 중복 체크
	public int checkId(String id) {
		LOGGER.info("checkId() 호출 : id = " + id);
		return sqlSession.selectOne(NAMESPACE + ".checkId", id);
	}

	
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		LOGGER.info("Login() 호출");
		return sqlSession.selectOne(NAMESPACE + ".login_cheack", vo);
	}

	@Override
	public MemberVO select(String id) {
		LOGGER.info("select userid() 호출");
		return sqlSession.selectOne(NAMESPACE + ".select_by_id",id);
	}

	@Override
	public int updateName(MemberVO vo) {
		LOGGER.info("updateName() 호출");
		return sqlSession.update(NAMESPACE+".update_Name", vo);
	}

	@Override
	public int updateContact(MemberVO vo) {
		LOGGER.info("updateName() 호출");
		return sqlSession.update(NAMESPACE+".update_Contact", vo);
	}

	@Override
	public int updateEmail(MemberVO vo) {
		LOGGER.info("updateEmail() 호출");
		return sqlSession.update(NAMESPACE+".update_Email", vo);
	}

	@Override
	public int updateAddress(MemberVO vo) {
		LOGGER.info("updateAddress() 호출");
		return sqlSession.update(NAMESPACE+".update_Address", vo);
	}

	@Override
	public int updateNote(MemberVO vo) {
		LOGGER.info("updateSpecialNote() 호출");
		return sqlSession.update(NAMESPACE+".update_Note", vo);
	}

	@Override
	public int updatePassword(MemberVO vo) {
		LOGGER.info("updatePassword() 호출");
		return sqlSession.update(NAMESPACE+".update_Password", vo);
	}

	@Override
	public int deleteMember(String id) {
		LOGGER.info("delete() 호출");
		return sqlSession.delete(NAMESPACE + ".delete_Member", id);
	}

	@Override
	public int updateBirthday(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".update_Birthday", vo);
	}

	@Override
	public int updateAnimals(MemberVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.delete(NAMESPACE + ".update_Animals", vo);
	}
	
	/* ===== 추가 ===== */
	/* ===== == ====== */
	@Override
	public MemberVO selectByNameEmail(MemberVO vo) {
		LOGGER.info("selectByNameEmail() 호출 : name = " + vo.getName() + ", email = " + vo.getEmail());
		return sqlSession.selectOne(NAMESPACE + ".find_id", vo);
	}
	
	@Override
	public MemberVO selectByIdEmail(MemberVO vo) {
		LOGGER.info("selectByNameEmail() 호출 : id = " + vo.getId() + ", email = " + vo.getEmail());
		return sqlSession.selectOne(NAMESPACE + ".find_pw", vo);
	}
	
	@Override
	public List<MemberVO> selectMember(AdminMemberCriteria criteria) {
		LOGGER.info("selectMember() 호출 : start = " + criteria.getStart() + ", end = " + criteria.getEnd());
		return sqlSession.selectList(NAMESPACE + ".memberPaging", criteria);
	}

	@Override
	public int getTotalNumsOfMember(AdminMemberCriteria criteria) {
		LOGGER.info("getTotalNumsOfMember() 호출");
		return sqlSession.selectOne(NAMESPACE+ ".total_member_count", criteria);
	}

	@Override
	public MemberVO getMember(String id) {
		LOGGER.info("getMember() 호출 : id = " + id);
		return sqlSession.selectOne(NAMESPACE + ".get_by_id",id);
	}
	

	@Override
	public int updateMember(MemberVO vo) {
		LOGGER.info("getMember() 호출 : vo = " + vo);
		return sqlSession.update(NAMESPACE+".update_member", vo);
	}

	@Override
	public int memberDelete(String id) {
		LOGGER.info("getMember() 호출 : id = " + id);
		return sqlSession.delete(NAMESPACE + ".member_delete", id);
	}

	@Override // email 중복 체크
	public int checkEmail(String email) {
		LOGGER.info("checkEmail() 호출 : email = " + email);
		return sqlSession.selectOne(NAMESPACE + ".checkEmail", email);
	}
	
}
