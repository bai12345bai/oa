package com.oa.service;

import java.util.List;
import com.oa.entity.Users;

public interface UserService {
	List<Users> findAll();
	
	Users login(String name,String pwd);
	
	int saveUsers(Users users);
	//修改用户
	Users findById(int id );
	void updateUsers(Users users);
	
	void deleteUsers(Users users);

}
