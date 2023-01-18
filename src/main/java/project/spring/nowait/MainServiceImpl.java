package project.spring.nowait;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {
 @Autowired
 MainDao mainDao;
 
 @Override
 public String Main(Map<String, Object> map) {
     int affectRowCount = this.mainDao.insert(map);
     if (affectRowCount ==  1) {
         return map.get("main_id").toString();
     }
     return null;

 }
 
 @Override
 public Map<String, Object> mypage(Map<String, Object> map){
     return this.mainDao.selectMypage(map);
 }

}
