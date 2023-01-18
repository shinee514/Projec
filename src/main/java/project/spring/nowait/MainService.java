package project.spring.nowait;

import java.util.Map;

public interface MainService {
	
	String login(Map<String, Object> map);

	Map<String, Object> mypage(Map<String, Object> map);
	
	Map<String, Object> detail(Map<String, Object> map);
	

}
