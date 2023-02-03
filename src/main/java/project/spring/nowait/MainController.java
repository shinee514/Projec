package project.spring.nowait;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {

@Autowired
MainService mainService;




	@RequestMapping(value="/main", method = RequestMethod.GET)
	public ModelAndView Main() {
	    return new ModelAndView("nowait/main");
	}
	@RequestMapping(value="/recommend", method = RequestMethod.GET)
	public ModelAndView Recommend() {
	    return new ModelAndView("nowait/recommend");
	}
	@RequestMapping(value="/first", method = RequestMethod.GET)
	public ModelAndView First() {
	    return new ModelAndView("nowait/first");
	}
	@RequestMapping(value="/rev", method = RequestMethod.GET)
	public ModelAndView Rev() {
	    return new ModelAndView("nowait/rev");
	}
	@RequestMapping(value="/sale", method = RequestMethod.GET)
	public ModelAndView Sale() {
	    return new ModelAndView("nowait/sale");
	}
	@RequestMapping(value="/qna", method = RequestMethod.GET)
	public ModelAndView Qna() {
	    return new ModelAndView("nowait/qna");
	}
	@RequestMapping(value="/pass", method = RequestMethod.GET)
	public ModelAndView Pass() {
	    return new ModelAndView("nowait/pass");
	}
	@RequestMapping(value="/write", method = RequestMethod.GET)
	public ModelAndView Write() {
	    return new ModelAndView("nowait/write");
	}
	@RequestMapping(value="/faq", method = RequestMethod.GET)
	public ModelAndView Faq() {
	    return new ModelAndView("nowait/faq");
	}


	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
	    Map<String, Object> detailMap = this.mainService.detail(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", detailMap);
	    String resId = map.get("resId").toString();
	    mav.addObject("resId", resId);
	    mav.setViewName("/nowait/detail");
	    return mav;
	}
	
	@RequestMapping(value = "/detailmenu", method = RequestMethod.GET)
	public ModelAndView detailMenu(@RequestParam Map<String, Object> map) {
	    Map<String, Object> detailMap = this.mainService.detail(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", detailMap);
	    String resId = map.get("resId").toString();
	    mav.addObject("resId", resId);
	    mav.setViewName("/nowait/detailmenu");
	    return mav;
	}
	
	@RequestMapping(value = "/rv", method = RequestMethod.GET)
	public ModelAndView rvName(@RequestParam Map<String, Object> map) {
	    Map<String, Object> nameMap = this.mainService.name(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", nameMap);
	    String resId = map.get("resId").toString();
	    mav.addObject("resId", resId);
	    mav.setViewName("/nowait/rv");
	    return mav;
	}
	
	@RequestMapping(value = "/rv", method = RequestMethod.POST)
	public ModelAndView rvPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

	    String rvId = this.mainService.insertRv(map);
	    if (rvId == null) {
	        mav.setViewName("redirect:/rv");
	    }else {
	        mav.setViewName("redirect:/rvcf?rvId=" + rvId); 
	    }  
	    return mav;
	}
	
	@RequestMapping(value = "/rvcf", method = RequestMethod.GET)
	public ModelAndView rv(@RequestParam Map<String, Object> map) {
	    Map<String, Object> rvMap = this.mainService.rv(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("rvData", rvMap);
	    String rvId = map.get("rvId").toString();
	    mav.addObject("rvId", rvId);
	    mav.setViewName("/nowait/rvcf");
	    return mav;
	}
	
	@RequestMapping(value = "/rvc", method = RequestMethod.POST)  
	public ModelAndView deleteRv(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  

	boolean isDeleteSuccess = this.mainService.removeRv(map);  
	if (isDeleteSuccess) {  
	mav.setViewName("redirect:/rev");  
	}else {  
	String rvId = map.get("rvId").toString();  
	mav.setViewName("redirect:/rvcf?rvId=" + rvId);  
	}  

	return mav;  
	}  
	
	@RequestMapping(value = "/num", method = RequestMethod.GET)
	public ModelAndView numName(@RequestParam Map<String, Object> map) {
	    Map<String, Object> nameMap = this.mainService.name2(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", nameMap);
	    String resId = map.get("resId").toString();
	    mav.addObject("resId", resId);
	    mav.setViewName("/nowait/num");
	    return mav;
	}
	
	@RequestMapping(value = "/num", method = RequestMethod.POST)
	public ModelAndView numPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

	    String numId = this.mainService.insertNum(map);
	    if (numId == null) {
	        mav.setViewName("redirect:/num");
	    }else {
	        mav.setViewName("redirect:/numcf?numId=" + numId); 
	    }  
	    return mav;
	}
	
	@RequestMapping(value = "/numcf", method = RequestMethod.GET)
	public ModelAndView num(@RequestParam Map<String, Object> map) {
	    Map<String, Object> numMap = this.mainService.num(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("numData", numMap);
	    String numId = map.get("numId").toString();
	    mav.addObject("numId", numId);
	    mav.setViewName("/nowait/numcf");
	    return mav;
	}
	
	@RequestMapping(value = "/numc", method = RequestMethod.POST)  
	public ModelAndView deleteNum(@RequestParam Map<String, Object> map) {  
	ModelAndView mav = new ModelAndView();  

	boolean isDeleteSuccess = this.mainService.removeNum(map);  
	if (isDeleteSuccess) {  
	mav.setViewName("redirect:/rev");  
	}else {  
	String numId = map.get("numId").toString();  
	mav.setViewName("redirect:/numcf?numId=" + numId);
	}  

	return mav;  
	}  
	
	@RequestMapping(value = "/popgd", method = RequestMethod.GET)
	public ModelAndView listPopCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listPopCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/popgd");
	return mav;  
	}
	
	@RequestMapping(value = "/popsp", method = RequestMethod.GET)
	public ModelAndView listPopJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listPopJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/popsp");
	return mav;  
	}
	
	@RequestMapping(value = "/pophn", method = RequestMethod.GET)
	public ModelAndView listPopHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listPopHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/pophn");
	return mav;  
	}
	
	@RequestMapping(value = "/korgd", method = RequestMethod.GET)
	public ModelAndView listKorCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listKorCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/korgd");
	return mav;  
	}
	
	@RequestMapping(value = "/korsp", method = RequestMethod.GET)
	public ModelAndView listKorJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listKorJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/korsp");
	return mav;  
	}
	
	@RequestMapping(value = "/korhn", method = RequestMethod.GET)
	public ModelAndView listKorHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listKorHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/korhn");
	return mav;  
	}
	
	@RequestMapping(value = "/usagd", method = RequestMethod.GET)
	public ModelAndView listUsaCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listUsaCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/usagd");
	return mav;  
	}
	
	@RequestMapping(value = "/usasp", method = RequestMethod.GET)
	public ModelAndView listUsaJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listUsaJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/usasp");
	return mav;  
	}
	
	@RequestMapping(value = "/usahn", method = RequestMethod.GET)
	public ModelAndView listUsaHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listUsaHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/usahn");
	return mav;  
	}
	
	@RequestMapping(value = "/chgd", method = RequestMethod.GET)
	public ModelAndView listChCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listChCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/chgd");
	return mav;  
	}
	
	@RequestMapping(value = "/chsp", method = RequestMethod.GET)
	public ModelAndView listChJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listChJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/chsp");
	return mav;  
	}
	
	@RequestMapping(value = "/chhn", method = RequestMethod.GET)
	public ModelAndView listChHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listChHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/chhn");
	return mav;  
	}
	
	@RequestMapping(value = "/jpgd", method = RequestMethod.GET)
	public ModelAndView listJpCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listJpCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/jpgd");
	return mav;  
	}
	
	@RequestMapping(value = "/jpsp", method = RequestMethod.GET)
	public ModelAndView listJpJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listJpJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/jpsp");
	return mav;  
	}
	
	@RequestMapping(value = "/jphn", method = RequestMethod.GET)
	public ModelAndView listJpHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listJpHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/jphn");
	return mav;  
	}
	
	@RequestMapping(value = "/hofgd", method = RequestMethod.GET)
	public ModelAndView listHofCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listHofCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/hofgd");
	return mav;  
	}
	
	@RequestMapping(value = "/hofsp", method = RequestMethod.GET)
	public ModelAndView listHofJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listHofJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/hofsp");
	return mav;  
	}
	
	@RequestMapping(value = "/hofhn", method = RequestMethod.GET)
	public ModelAndView listHofHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listHofHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rev/hofhn");
	return mav;  
	}
	
	@RequestMapping(value = "/recch", method = RequestMethod.GET)
	public ModelAndView listRecCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listRecCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rec/recch");
	return mav;  
	}
	
	@RequestMapping(value = "/recjs", method = RequestMethod.GET)
	public ModelAndView listRecJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listRecJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rec/recjs");
	return mav;  
	}
	
	@RequestMapping(value = "/recms", method = RequestMethod.GET)
	public ModelAndView listRecHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listRecHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/rec/recms");
	return mav;  
	}
	
	@RequestMapping(value = "/salech", method = RequestMethod.GET)
	public ModelAndView listSaleCh(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listSaleCh(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/sale/salech");
	return mav;  
	}
	
	@RequestMapping(value = "/salejs", method = RequestMethod.GET)
	public ModelAndView listSaleJs(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listSaleJs(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/sale/salejs");
	return mav;  
	}
	
	@RequestMapping(value = "/salems", method = RequestMethod.GET)
	public ModelAndView listSaleHn(@RequestParam Map<String, Object> map) {  

	List<Map<String, Object>> list = this.mainService.listSaleHn(map);  

	ModelAndView mav = new ModelAndView();  
	mav.addObject("data", list);  
	mav.setViewName("/nowait/sale/salems");
	return mav;  
	}
	
	
	/*
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public ModelAndView signup() {
	    return new ModelAndView("nowait/signup");
	}
		
	@RequestMapping(value="/signup", method = RequestMethod.POST)
	public ModelAndView signup1(@RequestParam Map<String, Object> map) {
		 String custId = this.signService.signup(map);
		 ModelAndView mav = new ModelAndView();
		 if (custId == null) {
		        mav.setViewName("redirect:/signup");
		    }else {
		        mav.setViewName("redirect:/login?custId=" + custId);
		    }

		    return mav;
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public ModelAndView login() {
	    return new ModelAndView("nowait/login");
	}
	*/
	
}


