package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.QuestionsVO;
import ani.project.hotel.pageutil.QuestionCriteria;
import ani.project.hotel.persistence.QuestionsDAO;
@Service
public class QuestionsServiceImple implements QuestionsService {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(QuestionsServiceImple.class);
	
	@Autowired
	private QuestionsDAO dao;
	
	@Override
	public int insert(QuestionsVO vo) {
		LOGGER.info("insert() 호출");
		System.out.println(vo);
		return dao.insert(vo);
	}

	@Override
	public int update(QuestionsVO vo) {
		LOGGER.info("update() 호출");
		return dao.update(vo);
	}

	@Override
	public int delete(int numQt) {
		LOGGER.info("delete() 호출");
		return dao.delete(numQt);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete() 호출");
		return dao.deleteAll(numHotel);
	}

	@Override
	public List<QuestionsVO> select(int numHotel, int numAnswer) {
		LOGGER.info("read() 호출");
		return dao.select(numHotel, numAnswer);
	}

	@Override
	public List<QuestionsVO> selectReply(int numQtReply) {
		LOGGER.info("read() 호출");
		return dao.selectReply(numQtReply);
	}

	@Override
	public int getTotalNums(int numHotel) {
		return dao.getTotalNums(numHotel);
	}

	@Override
	public int replyCount(int numQtReply, int numAnswer) {
		return dao.replyCount(numQtReply, numAnswer);
	}

	@Override
	public List<QuestionsVO> read(QuestionCriteria criteria, int numHotel) {
		// TODO Auto-generated method stub
		return dao.select(numHotel, criteria);
	}


}
