package project.spring.nowait;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignupServiceImpl implements SignupService {
   @Autowired
   SignupDao signupDao;

   @Override
   public String signup(Map<String, Object> map) {
       int affectRowCount = this.signupDao.insert(map);
       if (affectRowCount ==  1) {
           return map.get("cust_id").toString();
       }
       return null;

  }
}