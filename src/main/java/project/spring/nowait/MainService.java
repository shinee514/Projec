package project.spring.nowait;

import java.util.List;
import java.util.Map;

public interface MainService {
	
	Map<String, Object> detail(Map<String, Object> map);
	
	Map<String, Object> rv(Map<String, Object> map);
	
	String insertRv(Map<String, Object> map);
	
	Map<String, Object> name(Map<String, Object> map);
	
	List<Map<String, Object>> list(Map<String, Object> map);  
	
}