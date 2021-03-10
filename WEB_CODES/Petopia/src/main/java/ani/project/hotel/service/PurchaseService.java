package ani.project.hotel.service;

import org.springframework.stereotype.Service;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;
import ani.project.hotel.domain.MemberVO;

@Service
public interface PurchaseService {
	public MemberVO read(String id);
	int insert(HistoryVO vo);
	int favoritesInsert(FavoritesVO vo);
	int purchaseInsert(FavoritesVO vo);
	int deletenumHistory(int numHistory);
}
