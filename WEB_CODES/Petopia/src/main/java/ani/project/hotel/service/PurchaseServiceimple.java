package ani.project.hotel.service;

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
public class PurchaseServiceimple implements PurchaseService{
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(PurchaseServiceimple.class);
	
	@Autowired
	private MemberDAO memberDao;
	@Autowired
	private HistoryDAO historyDao;
	
	@Override
	public MemberVO read(String id) {
		// TODO Auto-generated method stub
		return memberDao.select(id);
	}

	@Override
	public int insert(HistoryVO vo) {
		// TODO Auto-generated method stub
		return historyDao.insert(vo);
	}

	@Override
	public int purchaseInsert(FavoritesVO vo) {
		
		return historyDao.purchaseInsert(vo);
	}
	
	@Override
	public int favoritesInsert(FavoritesVO vo) {
		return historyDao.favoritesInsert(vo);
	}

	@Override
	public int deletenumHistory(int numHistory) {
		// TODO Auto-generated method stub
		return historyDao.deleteBynumHistory(numHistory);
	}


	
}
