package project.spring.nowait;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Service
@Transactional(rollbackFor = {Exception.class})
public class CustServiceImpl implements CustService {
   
   @Inject
   @Autowired
   CustDao custdao;
   
   @Override
   public CustVO login(CustVO vo) throws Exception {
      return custdao.login(vo);
   }
   
   @Override
   public void custUpdate(CustVO vo) throws Exception {
      
	   custdao.custUpdate(vo);
   }
   @Override
   public void withdrawal(CustVO vo) throws Exception{
       custdao.withdrawal(vo);
}
}