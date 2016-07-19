package com.oa.dao;

import java.io.Serializable;
import java.util.List;

import javax.security.auth.login.LoginContext;

import com.oa.entity.Users;

public interface UsersDao {

	//查找所有用户
	List<Users> findAll();
	//登录
	Users login(String name,String pwd);
	//注册
	int saveUsers(Users users);
	Users findById(int id );
	//修改用户信息
	void updateUsers(Users users);
	//删除用户
	void deleteUsers(Users users);
	
}
