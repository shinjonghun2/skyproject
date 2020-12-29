package kr.co.skypjt.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.skypjt.beans.UserBean;


public class TopMenuInterceptor implements HandlerInterceptor {
	//interceptor������ �ڵ������� �ȵ�.
	private UserBean loginUserBean;
	
	//���������ؼ� ����
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


