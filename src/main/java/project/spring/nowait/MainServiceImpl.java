package project.spring.nowait;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {
 @Autowired
 MainDao mainDao;
 
 
 @Override
 public Map<String, Object> detail(Map<String, Object> map){
     return this.mainDao.selectDetail(map);
 }
 
 @Override
 public Map<String, Object> rv(Map<String, Object> map){
     return this.mainDao.selectRv(map);
 }
 
 @Override
 public String insertRv(Map<String, Object> map) {
     int affectRowCount = this.mainDao.insertRv(map);
     if (affectRowCount ==  1) {
         return map.get("rv_id").toString();
     }
     return null;

 }
 
 @Override
 public Map<String, Object> num(Map<String, Object> map){
     return this.mainDao.selectNum(map);
 }
 
 @Override
 public String insertNum(Map<String, Object> map) {
     int affectRowCount = this.mainDao.insertNum(map);
     if (affectRowCount ==  1) {
         return map.get("num_id").toString();
     }
     return null;
 }
 
 @Override  
 public boolean removeRv(Map<String, Object> map) {  
 int affectRowCount = this.mainDao.deleteRv(map);  
 return affectRowCount == 1;  
 }  
 
 @Override  
 public boolean removeNum(Map<String, Object> map) {  
 int affectRowCount = this.mainDao.deleteNum(map);  
 return affectRowCount == 1;  
 }  
 
 @Override
 public Map<String, Object> name(Map<String, Object> map){
     return this.mainDao.selectName(map);
 }
 
 @Override
 public Map<String, Object> name2(Map<String, Object> map){
     return this.mainDao.selectName2(map);
 }
 
 @Override  
 public List<Map<String, Object>> listPopCh(Map<String, Object> map){  
	 return this.mainDao.selectPopCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listPopJs(Map<String, Object> map){  
	 return this.mainDao.selectPopJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listPopHn(Map<String, Object> map){  
	 return this.mainDao.selectPopHn(map);
 }
 
 @Override  
 public List<Map<String, Object>> listKorCh(Map<String, Object> map){  
	 return this.mainDao.selectKorCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listKorJs(Map<String, Object> map){  
	 return this.mainDao.selectKorJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listKorHn(Map<String, Object> map){  
	 return this.mainDao.selectKorHn(map);
 }
 
 @Override  
 public List<Map<String, Object>> listUsaCh(Map<String, Object> map){  
	 return this.mainDao.selectUsaCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listUsaJs(Map<String, Object> map){  
	 return this.mainDao.selectUsaJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listUsaHn(Map<String, Object> map){  
	 return this.mainDao.selectUsaHn(map);
	 
 } @Override  
 public List<Map<String, Object>> listChCh(Map<String, Object> map){  
	 return this.mainDao.selectChCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listChJs(Map<String, Object> map){  
	 return this.mainDao.selectChJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listChHn(Map<String, Object> map){  
	 return this.mainDao.selectChHn(map);
	 
 } @Override  
 public List<Map<String, Object>> listJpCh(Map<String, Object> map){  
	 return this.mainDao.selectJpCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listJpJs(Map<String, Object> map){  
	 return this.mainDao.selectJpJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listJpHn(Map<String, Object> map){  
	 return this.mainDao.selectJpHn(map);
	 
 }
 
 @Override  
 public List<Map<String, Object>> listHofCh(Map<String, Object> map){  
	 return this.mainDao.selectHofCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listHofJs(Map<String, Object> map){  
	 return this.mainDao.selectHofJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listHofHn(Map<String, Object> map){  
	 return this.mainDao.selectHofHn(map);
 }
 
 @Override  
 public List<Map<String, Object>> listRecCh(Map<String, Object> map){  
	 return this.mainDao.selectHofCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listRecJs(Map<String, Object> map){  
	 return this.mainDao.selectHofJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listRecHn(Map<String, Object> map){  
	 return this.mainDao.selectHofHn(map);
 }
 
 @Override  
 public List<Map<String, Object>> listSaleCh(Map<String, Object> map){  
	 return this.mainDao.selectHofCh(map);
 }
 
 @Override  
 public List<Map<String, Object>> listSaleJs(Map<String, Object> map){  
	 return this.mainDao.selectHofJs(map);
 }
 
 @Override  
 public List<Map<String, Object>> listSaleHn(Map<String, Object> map){  
	 return this.mainDao.selectHofHn(map);
 }

}