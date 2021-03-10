package ani.project.hotel.service;

import java.util.List;

import ani.project.hotel.domain.ReviewVO;
import ani.project.hotel.pageutil.ReviewCriteria;

public interface ReviewService {
	int insert(ReviewVO vo);
	int update(ReviewVO vo);
	int delete(int numReview);
	int deleteAll(int numHotel);
	List<ReviewVO> select(int numHotel);
	ReviewVO selectReview(int numReview);
	int count(int numHotel);
	List<ReviewVO> read(ReviewCriteria criteria,int numHotel);
	int getTotalNums(int numHotel);
}
