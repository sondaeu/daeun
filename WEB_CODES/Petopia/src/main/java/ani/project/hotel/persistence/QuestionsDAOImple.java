package ani.project.hotel.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ani.project.hotel.domain.QuestionsVO;
import ani.project.hotel.pageutil.QuestionCriteria;
import ani.project.hotel.pageutil.ReviewCriteria;
@Repository
public class QuestionsDAOImple implements QuestionsDAO{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(QuestionsDAOImple.class);	
	private static final String NAMESPACE =
			"ani.project.hotel.QuestionsMapper";
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insert(QuestionsVO vo) {
		LOGGER.info("insert() ȣ��");
		return sqlSession.insert(NAMESPACE + ".insert", vo);
	}

	@Override
	public int update(QuestionsVO vo) {
		LOGGER.info("update() ȣ��");
		return sqlSession.update(NAMESPACE + ".update", vo);
	}

	@Override
	public int delete(int numQt) {
		LOGGER.info("delete() ȣ��");
		return sqlSession.delete(NAMESPACE + ".delete", numQt);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete_all() ȣ��");
		return sqlSession.delete(NAMESPACE + ".delete_all", numHotel);
	}

	@Override
	public List<QuestionsVO> select(int numHotel, int numAnswer) {
		LOGGER.info("select() ȣ��");
		Map<String, Integer> args = new HashMap<String, Integer>();
		args.put("numHotel", numHotel);
		args.put("numAnswer", numAnswer);
		return sqlSession.selectList(NAMESPACE + ".select_all", args);
	}

	@Override
	public List<QuestionsVO> selectReply(int numQtReply) {
		LOGGER.info("selectReply() ȣ��");
		System.out.println("���� : "  + numQtReply);
		return sqlSession.selectList(NAMESPACE + ".select_reply", numQtReply);
	}

	@Override
	public int getTotalNums(int numHotel) {
		return sqlSession.selectOne(NAMESPACE+ ".total_count", numHotel);
	}

	@Override
	public int replyCount(int numQtReply, int numAnswer) {
		Map<String, Integer> args = new HashMap<String, Integer>();
		args.put("numAnswer", numAnswer);
		args.put("numQtReply", numQtReply);
		return sqlSession.selectOne(NAMESPACE + ".replyCount", args);
	}

	@Override
	public List<QuestionsVO> select(int numHotel, QuestionCriteria criteria) {
		LOGGER.info("select() ȣ�� : page = " + criteria.getPage());
		return sqlSession.selectList(NAMESPACE + ".questionPaging", criteria);
	}

}
