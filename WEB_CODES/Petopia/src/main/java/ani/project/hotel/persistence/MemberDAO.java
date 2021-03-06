package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.pageutil.AdminMemberCriteria;

public interface MemberDAO {
	public abstract int insertMember(MemberVO vo); // 회원 가입
	public abstract int checkId(String id); // id 중복 체크
	public abstract MemberVO login(MemberVO vo) throws Exception;
	public abstract MemberVO select(String id);
	public abstract int updateName(MemberVO vo);
	public abstract int updateContact(MemberVO vo);
	public abstract int updateEmail(MemberVO vo);
	public abstract int updateAddress(MemberVO vo);
	public abstract int updateNote(MemberVO vo);
	public abstract int updateBirthday(MemberVO vo);
	public abstract int updateAnimals(MemberVO vo);
	public abstract int updatePassword(MemberVO vo);
	public abstract int deleteMember(String id);
	public abstract MemberVO selectByNameEmail(MemberVO vo);
	public abstract MemberVO selectByIdEmail(MemberVO vo);
	public abstract List<MemberVO> selectMember(AdminMemberCriteria criteria);
	public abstract int getTotalNumsOfMember(AdminMemberCriteria criteria);
	public abstract MemberVO getMember(String id);
	public abstract int updateMember(MemberVO vo);
	public abstract int memberDelete(String id);
	public abstract int checkEmail(String email); // id 중복 체크

}
