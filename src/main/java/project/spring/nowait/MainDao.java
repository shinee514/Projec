package project.spring.nowait;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MainDao {
 @Autowired
 SqlSessionTemplate sqlSessionTemplate;
 
 
 public Map<String, Object> selectDetail(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("res.select_detail", map);
	}
 
 public Map<String, Object> selectRv(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("rv.select_rv", map);
	}
 
 public int insertRv(Map<String, Object> map) {
	  return this.sqlSessionTemplate.insert("rv.insert", map);
	}
 

 public Map<String, Object> selectName(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("res.select_name", map);
	}
 
}
