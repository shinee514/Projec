package project.spring.nowait;

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
 public Map<String, Object> name(Map<String, Object> map){
     return this.mainDao.selectName(map);
 }

}