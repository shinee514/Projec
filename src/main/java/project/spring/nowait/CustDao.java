package project.spring.nowait;

public interface CustDao {

   public CustVO login(CustVO vo) throws Exception;
   
   public void custUpdate(CustVO vo) throws Exception;
   
   public void withdrawal(CustVO vo) throws Exception;
}