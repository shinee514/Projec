package project.spring.nowait;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping(value="/detail", method = RequestMethod.GET)
	public ModelAndView Detail() {
	    return new ModelAndView("nowait/detail/ms_ph_detail");
	}
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
}