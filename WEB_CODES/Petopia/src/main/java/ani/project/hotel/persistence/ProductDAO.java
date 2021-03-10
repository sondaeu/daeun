package ani.project.hotel.persistence;

import java.util.List;

import ani.project.hotel.domain.ProductVO;

public interface ProductDAO {
	int insert(ProductVO vo);
	int update(ProductVO vo);
	int updateSold(ProductVO vo);
	int delete(int numPro);
	int deleteAll(int numHotel);
	List<ProductVO> select(int numHotel);
}
