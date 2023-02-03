package project.spring.nowait;

import java.util.List;
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
 
 public Map<String, Object> selectNum(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("num.select_num", map);
	}

public int insertNum(Map<String, Object> map) {
	  return this.sqlSessionTemplate.insert("num.insert", map);
	}

public int deleteRv(Map<String, Object> map) {  
		return this.sqlSessionTemplate.delete("rv.delete", map);  
	}  

public int deleteNum(Map<String, Object> map) {  
	return this.sqlSessionTemplate.delete("num.delete", map);  
}  
 

 public Map<String, Object> selectName(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("res.select_name", map);
	}
 
 public Map<String, Object> selectName2(Map<String, Object> map) {
	    return this.sqlSessionTemplate.selectOne("res.select_name", map);
	}
 
 public List<Map<String, Object>> selectPopCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_pop_ch", map);  
	 }  
 
 public List<Map<String, Object>> selectPopJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_pop_js", map);  
	 }
 
 public List<Map<String, Object>> selectPopHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_pop_hn", map);  
	 }
 
 public List<Map<String, Object>> selectKorCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_kor_ch", map);  
	 }
 
 public List<Map<String, Object>> selectKorJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_kor_js", map);  
	 }
 
 public List<Map<String, Object>> selectKorHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_kor_hn", map);  
	 }
 
 public List<Map<String, Object>> selectUsaCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_usa_ch", map);  
	 }
 
 public List<Map<String, Object>> selectUsaJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_usa_js", map);  
	 }
 
 public List<Map<String, Object>> selectUsaHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_usa_hn", map);  
	 }
 
 public List<Map<String, Object>> selectJpCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_jp_ch", map);  
	 }
 
 public List<Map<String, Object>> selectJpJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_jp_js", map);  
	 }
 
 public List<Map<String, Object>> selectJpHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_jp_hn", map);  
	 }
 
 public List<Map<String, Object>> selectChCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_ch_ch", map);  
	 }
 
 public List<Map<String, Object>> selectChJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_ch_js", map);  
	 }
 
 public List<Map<String, Object>> selectChHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_ch_hn", map);  
	 }
 
 public List<Map<String, Object>> selectHofCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_hof_ch", map);  
	 }
 
 public List<Map<String, Object>> selectHofJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_hof_js", map);  
	 }
 
 public List<Map<String, Object>> selectHofHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_hof_hn", map);  
	 }

 public List<Map<String, Object>> selectRecCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_rec_ch", map);  
	 }
 
 public List<Map<String, Object>> selectRecJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_rec_js", map);  
	 }
 
 public List<Map<String, Object>> selectRecHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_rec_hn", map);  
	 }
 
 public List<Map<String, Object>> selectSaleCh(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_sale_ch", map);  
	 }
 
 public List<Map<String, Object>> selectSaleJs(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_sale_js", map);  
	 }
 
 public List<Map<String, Object>> selectSaleHn(Map<String, Object> map) {  
	 return this.sqlSessionTemplate.selectList("res.select_sale_hn", map);  
	 }
 
 
 
}
