package project.spring.nowait;

import org.springframework.stereotype.Service;

@Service
public interface CustService {

   
   public CustVO login(CustVO vo) throws Exception;
   
   public void custUpdate(CustVO vo) throws Exception;
   
   public void withdrawal(CustVO vo) throws Exception;
}