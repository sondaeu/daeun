package ani.project.hotel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ani.project.hotel.domain.ProductVO;
import ani.project.hotel.persistence.ProductDAO;
@Service
public class ProductServiceImple implements ProductService {
	private static final Logger LOGGER = 
			LoggerFactory.getLogger(ProductServiceImple.class);
	
	@Autowired
	private ProductDAO dao;
	
	@Override
	public int insert(ProductVO vo) {
		LOGGER.info("insert() ȣ��");
		System.out.println(vo);
		try {
			return dao.insert(vo);
		} catch (Exception e) {
			return 1;
		}		
	}

	@Override
	public int update(ProductVO vo) {
		LOGGER.info("update() ȣ��");
		return dao.update(vo);
	}

	@Override
	public int updateSold(ProductVO vo) {
		LOGGER.info("delete() ȣ��");
		return dao.updateSold(vo);
	}

	@Override
	public int delete(int numPro) {
		LOGGER.info("delete() ȣ��");
		return dao.delete(numPro);
	}

	@Override
	public int deleteAll(int numHotel) {
		LOGGER.info("delete() ȣ��");
		return dao.deleteAll(numHotel);
	}

	@Override
	public List<ProductVO> select(int numHotel) {
		LOGGER.info("select() ȣ��");
		return dao.select(numHotel);
	}

}
