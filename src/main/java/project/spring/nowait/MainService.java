package project.spring.nowait;

import java.util.Map;

public interface MainService {
	
	Map<String, Object> detail(Map<String, Object> map);
	
	Map<String, Object> rv(Map<String, Object> map);
	
	String insertRv(Map<String, Object> map);
	
	Map<String, Object> name(Map<String, Object> map);
	
}