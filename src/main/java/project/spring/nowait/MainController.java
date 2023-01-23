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
@Autowired
SignupService signService;


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
	@RequestMapping(value="/rev123", method = RequestMethod.GET)
	public ModelAndView Rev123() {
	    return new ModelAndView("nowait/rev123");
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
}