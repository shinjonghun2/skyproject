package kr.co.skypjt.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import kr.co.skypjt.beans.UserBean;


public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserBean.class.isAssignableFrom(clazz);
	}

	@Override public void validate(Object target, Errors errors) {
	//����ȯ 
	UserBean userBean=(UserBean)target;
	String beanName=errors.getObjectName();
	/*
	 * @Override public void validate(Object target, Errors errors) { // TODO
	 * Auto-generated method stub //����ȯ UserBean userBean=(UserBean)target;
	 * 
	 * String beanName=errors.getObjectName();
	 * 
	 * if(userBean.getUser_pw().equals(userBean.getUser_pw2()) == false) {
	 * errors.rejectValue("user_pw", "NotEquals"); errors.rejectValue("user_pw2",
	 * "NotEquals"); }
	 * 
	 * if(userBean.isUserIdExist() == false) { errors.rejectValue("user_id",
	 * "DontCheckUserIdExist"); } }
	 */

		//ȸ�����Խÿ��� �۵��ǵ��� ����
		if(beanName.equals("joinUserBean") || beanName.equals("modifyUserBean")) {//ȸ�����Խ� �Ǵ� �������ÿ��� �۵��ǵ��� ����
			if(userBean.getUser_pw().equals(userBean.getUser_pw2())==false) {
				errors.rejectValue("user_pw", "NotEquals");
				errors.rejectValue("user_pw2", "NotEquals");
		}
		}
		//ȸ�����Խ� 
		if(beanName.equals("joinUserBean")) {
			if(userBean.isUserIdExist()==false) {
				errors.rejectValue("user_id", "DonCheckUserIdExist");
				}
			}
		}
	

}
