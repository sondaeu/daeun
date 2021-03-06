package ani.project.hotel.service;

import java.util.List;

import ani.project.hotel.domain.AllInfoVO;
import ani.project.hotel.domain.HotelBoardVO;
import ani.project.hotel.domain.MemberVO;
import ani.project.hotel.pageutil.AdminMemberCriteria;

public interface AdminService {
	List<AllInfoVO> read();
	int update(HotelBoardVO vo);
	int delete(int numHotel);
	public abstract List<MemberVO> readMember(AdminMemberCriteria acriteria);
	public abstract int getTotalNumsOfMember(AdminMemberCriteria criteria);
	public abstract MemberVO getMember(String id);
	public abstract int updateMember(MemberVO vo);
	public abstract int deleteMember(String id);
	//public abstract int deleteMember_all(String[] id);
}
