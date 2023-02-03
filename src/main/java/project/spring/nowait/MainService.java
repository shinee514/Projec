package project.spring.nowait;

import java.util.List;
import java.util.Map;

public interface MainService {
	
	Map<String, Object> detail(Map<String, Object> map);
	
	Map<String, Object> rv(Map<String, Object> map);
	
	String insertRv(Map<String, Object> map);
	
	Map<String, Object> num(Map<String, Object> map);
	
	String insertNum(Map<String, Object> map);
	
	Map<String, Object> name(Map<String, Object> map);
	
	Map<String, Object> name2(Map<String, Object> map);
	
	boolean removeRv(Map<String, Object> map);  
	
	boolean removeNum(Map<String, Object> map);  
	
	List<Map<String, Object>> listPopCh(Map<String, Object> map);
	
	List<Map<String, Object>> listPopJs(Map<String, Object> map);
	
	List<Map<String, Object>> listPopHn(Map<String, Object> map);
	
	List<Map<String, Object>> listKorCh(Map<String, Object> map);
	
	List<Map<String, Object>> listKorJs(Map<String, Object> map);
	
	List<Map<String, Object>> listKorHn(Map<String, Object> map);
	
	List<Map<String, Object>> listUsaCh(Map<String, Object> map);
	
	List<Map<String, Object>> listUsaJs(Map<String, Object> map);
	
	List<Map<String, Object>> listUsaHn(Map<String, Object> map);
	
	List<Map<String, Object>> listChCh(Map<String, Object> map);
	
	List<Map<String, Object>> listChJs(Map<String, Object> map);
	
	List<Map<String, Object>> listChHn(Map<String, Object> map);
	
	List<Map<String, Object>> listJpCh(Map<String, Object> map);
	
	List<Map<String, Object>> listJpJs(Map<String, Object> map);
	
	List<Map<String, Object>> listJpHn(Map<String, Object> map);
	
	List<Map<String, Object>> listHofCh(Map<String, Object> map);
	
	List<Map<String, Object>> listHofJs(Map<String, Object> map);
	
	List<Map<String, Object>> listHofHn(Map<String, Object> map);
	
	List<Map<String, Object>> listRecCh(Map<String, Object> map);
	
	List<Map<String, Object>> listRecJs(Map<String, Object> map);
	
	List<Map<String, Object>> listRecHn(Map<String, Object> map);
	
	List<Map<String, Object>> listSaleCh(Map<String, Object> map);
	
	List<Map<String, Object>> listSaleJs(Map<String, Object> map);
	
	List<Map<String, Object>> listSaleHn(Map<String, Object> map);
	
}