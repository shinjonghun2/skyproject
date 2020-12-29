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
		
		//�α����� ���� �ʾҴٸ�
		if(loginUserBean.isUserLogin()==false) {
			String contextPath=request.getContextPath();
			
			response.sendRedirect(contextPath + "/not_login");
			//���� �ܰ�� �̵��Ҽ� ���� ����
			return false;
		}
		//�α����� �Ǿ� �ִ� ����
		return true;
	}

}
