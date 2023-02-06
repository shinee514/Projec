package project.spring.nowait;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/*")
public class CustController {

	private static final Logger logger = LoggerFactory.getLogger(CustController.class);

	@Inject
	@Autowired
	CustService service;
	@Autowired
	SignupService signService;

	/* 회원가입 */
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView signup() {
		return new ModelAndView("nowait/signup");
	}

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public ModelAndView signup1(@RequestParam Map<String, Object> map) {
		String custId = this.signService.signup(map);
		ModelAndView mav = new ModelAndView();
		if (custId == null) {
			mav.setViewName("redirect:/signup");
		} else {
			mav.setViewName("redirect:/login?custId=" + custId);
		}

		return mav;
	}

	/* 로그인 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {
		return new ModelAndView("nowait/login");
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(CustVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("post login");

		HttpSession session = req.getSession();

		CustVO login = service.login(vo);

		if (login == null) {
			session.setAttribute("nowait", null);
			rttr.addFlashAttribute("msg", false);
			return "redirect:/login";
		} else {
			session.setAttribute("nowait", login);
		}

		return "redirect:/rev";
	}

	/* 로그아웃 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception {
		logger.info("get logout");

		session.invalidate();

		return "redirect:/rev";
	}

	/* 회원정보 수정 */

	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
	public String registerUpdateView() throws Exception {

		return "nowait/mypage";
	}

	@RequestMapping(value = "/mypage", method = RequestMethod.POST)
	public String registerUpdate(CustVO vo, HttpSession session) throws Exception {

		service.custUpdate(vo);

		session.invalidate();

		return "redirect:/login";
	}

	/* 회원 탈퇴 */
		
	@RequestMapping(value = "/withdrawal", method = RequestMethod.GET)
	public ModelAndView withdrawal() {
		return new ModelAndView("nowait/withdrawal");
	}

	  @RequestMapping(value = "/withdrawal", method = RequestMethod.POST) 
	  public String postWithdrawal(HttpSession session, CustVO vo, RedirectAttributes rttr) throws Exception {
		  logger.info("post withdrawal");
	  
	  CustVO nowait = (CustVO)session.getAttribute("nowait");
	  
	  String oldPass = nowait.getCust_pw(); 
	  String newPass = vo.getCust_pw();
	  
	  if(!(oldPass.equals(newPass))) { 
		  rttr.addFlashAttribute("msg", false); 
		  return "redirect:/withdrawal"; }
	  
	  service.withdrawal(vo);
	  
	  session.invalidate();
	  
	  return "redirect:/login"; 
	  }
	 

}