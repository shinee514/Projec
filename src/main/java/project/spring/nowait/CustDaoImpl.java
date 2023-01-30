package project.spring.nowait;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

@Repository
@Service
public class CustDaoImpl implements CustDao {
   
      @Inject SqlSession sql;
      @Autowired
      
      private static String namespace = "cust";
      
      public CustVO login(CustVO vo) throws Exception {
         return sql.selectOne(namespace + ".login", vo);
      }
      
      @Override
      public void custUpdate(CustVO vo) throws Exception{
         sql.update("cust.custUpdate", vo);
      }
      
      @Override
      public void withdrawal(CustVO vo) throws Exception{
         sql.update("cust.withdrawal", vo);
      }
}