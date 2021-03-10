package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.ReviewCriteria;

public interface ReviewDAO {
	int insert(ReviewVO vo);
	int update(ReviewVO vo);
	int delete(int numReview);
	int deleteAll(int numHotel);
	List<ReviewVO> select(int numHotel);
	ReviewVO selectReview(int numReview);
	int count(int numHotel);
	List<ReviewVO> select(int numHotel,ReviewCriteria criteria); // �� �������� ����
	int getTotalNums(int numHotel);
}
