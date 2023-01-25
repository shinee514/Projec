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
	//@RequestMapping(value="/rvcf", method = RequestMethod.GET)
	//public ModelAndView Rvcf() {
	    //return new ModelAndView("nowait/rvcf");
	//}
	@RequestMapping(value="/sale", method = RequestMethod.GET)
	public ModelAndView Sale() {
	    return new ModelAndView("nowait/sale");
	}
	@RequestMapping(value="/popgd", method = RequestMethod.GET)
	public ModelAndView Popgd() {
	    return new ModelAndView("nowait/rev/popgd");
	}
	@RequestMapping(value="/popsp", method = RequestMethod.GET)
	public ModelAndView Popsp() {
	    return new ModelAndView("nowait/rev/popsp");
	}
	@RequestMapping(value="/pophn", method = RequestMethod.GET)
	public ModelAndView Pophn() {
	    return new ModelAndView("nowait/rev/pophn");
	}
	@RequestMapping(value="/hofgd", method = RequestMethod.GET)
	public ModelAndView Hofgd() {
	    return new ModelAndView("nowait/rev/hofgd");
	}
	@RequestMapping(value="/hofsp", method = RequestMethod.GET)
	public ModelAndView Hofsp() {
	    return new ModelAndView("nowait/rev/hofsp");
	}
	@RequestMapping(value="/hofhn", method = RequestMethod.GET)
	public ModelAndView Hofhn() {
	    return new ModelAndView("nowait/rev/hofhn");
	}
	@RequestMapping(value="/korgd", method = RequestMethod.GET)
	public ModelAndView Korgd() {
	    return new ModelAndView("nowait/rev/korgd");
	}
	@RequestMapping(value="/korsp", method = RequestMethod.GET)
	public ModelAndView Korsp() {
	    return new ModelAndView("nowait/rev/korsp");
	}
	@RequestMapping(value="/korhn", method = RequestMethod.GET)
	public ModelAndView Korhn() {
	    return new ModelAndView("nowait/rev/korhn");
	}
	@RequestMapping(value="/usagd", method = RequestMethod.GET)
	public ModelAndView Usagd() {
	    return new ModelAndView("nowait/rev/usagd");
	}
	@RequestMapping(value="/usasp", method = RequestMethod.GET)
	public ModelAndView Usasp() {
	    return new ModelAndView("nowait/rev/usasp");
	}
	@RequestMapping(value="/usahn", method = RequestMethod.GET)
	public ModelAndView Usahn() {
	    return new ModelAndView("nowait/rev/usahn");
	}
	@RequestMapping(value="/jpgd", method = RequestMethod.GET)
	public ModelAndView Jpgd() {
	    return new ModelAndView("nowait/rev/jpgd");
	}
	@RequestMapping(value="/jpsp", method = RequestMethod.GET)
	public ModelAndView Jpsp() {
	    return new ModelAndView("nowait/rev/jpsp");
	}
	@RequestMapping(value="/jphn", method = RequestMethod.GET)
	public ModelAndView Jphn() {
	    return new ModelAndView("nowait/rev/jphn");
	}
	@RequestMapping(value="/chgd", method = RequestMethod.GET)
	public ModelAndView Chgd() {
	    return new ModelAndView("nowait/rev/chgd");
	}
	@RequestMapping(value="/chsp", method = RequestMethod.GET)
	public ModelAndView Chsp() {
	    return new ModelAndView("nowait/rev/chsp");
	}
	@RequestMapping(value="/chhn", method = RequestMethod.GET)
	public ModelAndView Chhn() {
	    return new ModelAndView("nowait/rev/chhn");
	}
	@RequestMapping(value="/recjs", method = RequestMethod.GET)
	public ModelAndView Recjs() {
	    return new ModelAndView("nowait/rec/recjs");
	}
	@RequestMapping(value="/recch", method = RequestMethod.GET)
	public ModelAndView Recch() {
	    return new ModelAndView("nowait/rec/recch");
	}
	@RequestMapping(value="/recms", method = RequestMethod.GET)
	public ModelAndView Recms() {
	    return new ModelAndView("nowait/rec/recms");
	}
	@RequestMapping(value="/salech", method = RequestMethod.GET)
	public ModelAndView Salech() {
	    return new ModelAndView("nowait/sale/salech");
	}
	@RequestMapping(value="/salejs", method = RequestMethod.GET)
	public ModelAndView Salejs() {
	    return new ModelAndView("nowait/sale/salejs");
	}
	@RequestMapping(value="/salems", method = RequestMethod.GET)
	public ModelAndView Salems() {
	    return new ModelAndView("nowait/sale/salems");
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