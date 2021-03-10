package ani.project.hotel.service;

import java.util.List;

import ani.project.hotel.domain.QuestionsVO;
import ani.project.hotel.pageutil.QuestionCriteria;
import ani.project.hotel.pageutil.ReviewCriteria;

public interface QuestionsService {
	int insert(QuestionsVO vo);
	int update(QuestionsVO vo);
	int delete(int numQt);
	int deleteAll(int numHotel);
	List<QuestionsVO> select(int numHotel, int numAnswer);
	List<QuestionsVO> selectReply(int numQtReply);
	int getTotalNums(int numHotel);
	int replyCount(int numQtReply, int numAnswer);
	List<QuestionsVO> read(QuestionCriteria criteria,int numHotel);
}
