package kr.co.skypjt.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.dao.UserDao;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;

	@Resource(name = "loginUserBean")
	private UserBean loginUserBean;

	// 넘겨받은 아이디의 사용 가능 여부 판단.
	public boolean checkuserIdExist(String user_id) {
		String user_id2 = userDao.checkUserIdExist(user_id);

		if (user_id2 == null) {
			return true;
		}else {
			return false;
		}
	}

	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}

	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2 = userDao.getLoginUserInfo(tempLoginUserBean);
		// 가져온 데이터가 있다면
		if (tempLoginUserBean2 != null) {
			loginUserBean.setUser_id(tempLoginUserBean2.getUser_id());
			loginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			loginUserBean.setUserLogin(true);
		}

	}

	
	  public void getModifyUserInfo(UserBean modifyUserBean) { UserBean
	  tempModifyUserBean = userDao.getModifyUserInfo(loginUserBean.getUser_id());
	  
	  modifyUserBean.setUser_id(tempModifyUserBean.getUser_id());
	  modifyUserBean.setUser_name(tempModifyUserBean.getUser_name());
	  modifyUserBean.setUser_birth(tempModifyUserBean.getUser_birth());
	  modifyUserBean.setUser_pw(tempModifyUserBean.getUser_pw());
	  modifyUserBean.setUser_pw2(tempModifyUserBean.getUser_pw2());
	  modifyUserBean.setUser_email(tempModifyUserBean.getUser_email());
	  modifyUserBean.setUser_phone(tempModifyUserBean.getUser_phone());
	  
	  }
	  
	  public void modifyUserInfo(UserBean modifyUserBean) {
	  modifyUserBean.setUser_id(loginUserBean.getUser_id());
	  userDao.modifyUserInfo(modifyUserBean);
	  
	  }
	 

}

