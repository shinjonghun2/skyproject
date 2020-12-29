package kr.co.skypjt.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.skypjt.beans.UserBean;
import kr.co.skypjt.mapper.UserMapper;

@Repository
public class UserDao {
	
	@Autowired  //mapper ����
	private UserMapper userMapper;
	
	//�Է¹��� ���̵� ��ȯ
	public String checkUserIdExist(String user_id) {
		return userMapper.checkUserIdExist(user_id);
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return userMapper.getLoginUserInfo(tempLoginUserBean);
	}
	
	
	
	  public UserBean getModifyUserInfo(String user_id){ 
		  return userMapper.getModifyUserInfo(user_id); }
	  
	  
	  public void modifyUserInfo(UserBean modifyUserBean) {
	  userMapper.modifyUserInfo(modifyUserBean); }
	 
}
