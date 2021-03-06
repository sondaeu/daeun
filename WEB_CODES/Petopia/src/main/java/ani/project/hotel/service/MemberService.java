package ani.project.hotel.service;

import java.util.List;

import org.springframework.stereotype.Service;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;
import ani.project.hotel.domain.MemberVO;

@Service
public interface MemberService {
	public abstract int createMember(MemberVO vo); // 회원 가입
	public abstract int readMember(String id); // id 중복 체크	
	public MemberVO login(MemberVO vo) throws Exception;
	public MemberVO read(String id);
	public abstract int updateName(MemberVO vo);
	public abstract int updateContact(MemberVO vo);
	public abstract int updateEmail(MemberVO vo);
	public abstract int updateAddress(MemberVO vo);
	public abstract int updateNote(MemberVO vo);
	public abstract int updatePassword(MemberVO vo);
	public abstract int deleteMember(String id);
	List<HistoryVO> historyRead(String id);
	List<FavoritesVO> favoritesRead(String id);
	public abstract int deleteFavorites(int numFavorites);
	public abstract int deleteByIdFavorites(String id);
	public abstract int updateBirthday(MemberVO vo);
	public abstract int updateAnimals(MemberVO vo);
	public abstract MemberVO readId(MemberVO vo);
	public abstract MemberVO readPw(MemberVO vo);
	public abstract int readMemberId(String id); // id 중복 체크	
	public abstract int readMemberEmail(String email); // id 중복 체크	

}
