package kr.co.skypjt.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.skypjt.beans.UserBean;

public interface UserMapper {
	
	@Select("select user_id from join_table where user_id=#{user_id}")
	String checkUserIdExist(String user_id);

	@Insert("insert into join_table(user_name, user_birth, user_id, user_pw, user_pw2, user_email, user_phone) "
			+ "values(#{user_name},#{user_birth},#{user_id},#{user_pw},#{user_pw2},#{user_email}, #{user_phone})")
	void addUserInfo(UserBean joinUserBean);

	@Select("select user_id, user_name from join_table " + "where user_id=#{user_id} and user_pw=#{user_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);

	@Select("select user_name, user_birth, user_id, user_pw, user_pw2, user_email, user_phone " + "from join_table " + "where user_id = #{user_id}")
	UserBean getModifyUserInfo(String user_id);
	 
	 
	 @Update("update join_table " +		 
			 "set user_pw=#{user_pw}, user_pw2=#{user_pw2}, user_email=#{user_email}, user_phone=#{user_phone} " + 
			 "where user_id = #{user_id}")
	void modifyUserInfo(UserBean modifyUserBean);

}
