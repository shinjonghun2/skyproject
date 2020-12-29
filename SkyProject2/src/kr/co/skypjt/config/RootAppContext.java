package kr.co.skypjt.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.skypjt.beans.UserBean;

//��濡����� ������ �ъ�⑺�� bean�� �������� �대����
@Configuration
public class RootAppContext {

	
	//이름으로 구분하여 등록
		@Bean("loginUserBean")
		@SessionScope
		public UserBean loginUserBean() {
			return new UserBean();
		}
	
	
}
