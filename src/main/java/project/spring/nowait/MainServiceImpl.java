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

}