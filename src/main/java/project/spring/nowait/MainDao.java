package project.spring.nowait;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {
 @Autowired
 SqlSessionTemplate sqlSessionTemplate;
 
 public int insert(Map<String, Object> map) {
	  return this.sqlSessionTemplate.insert("main.insert", map);
	}
 
 public Map<String, Object> selectMypage(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("cust.select_mypage", map);
	}
 
}
