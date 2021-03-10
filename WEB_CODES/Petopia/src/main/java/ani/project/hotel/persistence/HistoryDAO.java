package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.FavoritesVO;
import ani.project.hotel.domain.HistoryVO;

public interface HistoryDAO {
	int insert(HistoryVO vo);
	int favoritesInsert(FavoritesVO vo); // ��ٱ����߰�
	List<HistoryVO> selectById(String id);
	List<FavoritesVO> selectByIdFavorites(String id);
	int deletefavorites(int numFavorites);
	int purchaseInsert(FavoritesVO vo);
	int deleteByIdfavorites(String id);
	int deleteBynumHistory(int numHistory);
}
