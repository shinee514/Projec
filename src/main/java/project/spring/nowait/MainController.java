package project.spring.nowait;


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

	//@RequestMapping(value="/detail", method = RequestMethod.GET)
	//public ModelAndView Detail() {
	//    return new ModelAndView("nowait/detail/ms_ph_detail");
	//}
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
	@RequestMapping(value="/rv", method = RequestMethod.GET)
	public ModelAndView Rv() {
	    return new ModelAndView("nowait/rv");
	}
	@RequestMapping(value="/rvcf", method = RequestMethod.GET)
	public ModelAndView Rvcf() {
	    return new ModelAndView("nowait/rvcf");
	}
	@RequestMapping(value="/sale", method = RequestMethod.GET)
	public ModelAndView Sale() {
	    return new ModelAndView("nowait/sale");
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginPost(@RequestParam Map<String, Object> map) {
	    ModelAndView mav = new ModelAndView();

	    String custId = this.mainService.login(map);
	    if (custId == null) {
	        mav.setViewName("redirect:/login");
	    }else {
	        mav.setViewName("redirect:/mypage?custId=" + custId); 
	    }  

	    return mav;
	}
	
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public ModelAndView detail1(@RequestParam Map<String, Object> map) {
	    Map<String, Object> mypageMap = this.mainService.mypage(map);

	    ModelAndView mav = new ModelAndView();
	    mav.addObject("data", mypageMap);
	    String custId = map.get("custId").toString();
	    mav.addObject("custId", custId);
	    mav.setViewName("/nowait/mypage");
	    return mav;
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
	

}