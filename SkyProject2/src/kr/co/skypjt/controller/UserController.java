package kr.co.skypjt.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.service.HotelService;
import kr.co.skypjt.service.TravelInfoService;
import kr.co.skypjt.service.UserService;
import kr.co.skypjt.validator.UserValidator;

@Controller

public class UserController {

	@Autowired
	private UserService userService;
	
	//sessionscope 가져오기
	@Resource(name="loginUserBean")
	private UserBean loginUserBean;
	
	@Autowired
	HotelService hotelservice;
	
	@Autowired
	TravelInfoService travelinfoservice;
	
	@GetMapping("/login")
	public String login(@ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,
			@RequestParam(value = "fail", defaultValue = "false") boolean fail, Model model) {

		model.addAttribute("fail", fail);
		return "login";
	}						

	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "login";
		}
		
		userService.getLoginUserInfo(tempLoginUserBean);
		//위에서 유효성 검사 통과하고 두번째 if에서 로그인이 성공하면 login success, 로그인 아이디 비번 안맞으면 fail
		if(loginUserBean.isUserLogin() == false) {
			return "login_fail";
		} else {
			return "login_success";
		} 
			
	}
	@GetMapping("/not_login")
	public String not_login() {	
		 	
		return "not_login";
	}
	
	
	@GetMapping("/logout")
	public String logout() {	
		//로그아웃 누르면 로그인상태가 false가 되게
		loginUserBean.setUserLogin(false); 	
		return "logout";
	}

	
	@GetMapping("/member_join")
	public String join(@ModelAttribute("joinUserBean") UserBean joinUserBean) {
		return "member_join";
	}
	
	

	@PostMapping("join_pro")
	public String join_pro(@Valid  @ModelAttribute("joinUserBean") UserBean joinUserBean, BindingResult result){      
	    if(result.hasErrors()) {
	    	return "member_join";
	    }
	    
	    userService.addUserInfo(joinUserBean);
	     return "join_success";
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		UserValidator validator1 = new UserValidator();
		binder.addValidators(validator1);
	}

	
	@GetMapping("/user_modify")
	public String modify(@ModelAttribute("modifyUserBean") UserBean modifyUserBean) {
		userService.getModifyUserInfo(modifyUserBean);
		
	return "user_modify";
	}
	
	@PostMapping("/modify_pro")
	   public String modify_pro(@Valid  @ModelAttribute("modifyUserBean") UserBean modifyUserBean, BindingResult result){      
	       if(result.hasErrors()) {
	          return "user_modify";
	       }
	       userService.modifyUserInfo(modifyUserBean);
	        return "modify_success";
	   }
	
	
}
