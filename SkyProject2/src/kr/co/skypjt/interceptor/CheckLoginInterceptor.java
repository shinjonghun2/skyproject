package kr.co.skypjt.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.skypjt.beans.UserBean;


public class CheckLoginInterceptor  implements HandlerInterceptor{
	
	private UserBean loginUserBean;
	
	public CheckLoginInterceptor(UserBean loginUserBean) {
		this.loginUserBean=loginUserBean;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//로그인을 하지 않았다면
		if(loginUserBean.isUserLogin()==false) {
			String contextPath=request.getContextPath();
			
			response.sendRedirect(contextPath + "/not_login");
			//다음 단계로 이동할수 없는 상태
			return false;
		}
		//로그인이 되어 있는 상태
		return true;
	}

}
