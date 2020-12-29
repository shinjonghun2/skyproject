package kr.co.skypjt.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.skypjt.beans.UserBean;


public class TopMenuInterceptor implements HandlerInterceptor {
	//interceptor에서는 자동주입이 안됨.
	private UserBean loginUserBean;
	
	//생성자통해서 주입
	 public TopMenuInterceptor(UserBean loginUserBean) {
		this.loginUserBean=loginUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		request.setAttribute("loginUserBean", loginUserBean);
		return true;
	}

}


