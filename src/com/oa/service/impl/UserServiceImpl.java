package com.oa.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oa.dao.UsersDao;
import com.oa.entity.Users;
import com.oa.service.UserService;
@Service 
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UsersDao usersDao;
	
	@Override
	public Users login(String name, String pwd) {
		return usersDao.login(name, pwd);
	}
	
	@Override
	public int saveUsers(Users users) {
		return usersDao.saveUsers(users);
	}
	
	@Override
	public List<Users> findAll() {
		return usersDao.findAll();
	}
	
	@Override
	public Users findById(int id) {
		return usersDao.findById(id);
	}
	
	@Override//修改
	public void updateUsers(Users users){
		usersDao.updateUsers(users);
	}
	
	@Override//删除用户
	public void deleteUsers(Users users){
		 usersDao.deleteUsers(users);
	}
	
	
	
	public UsersDao getUsersDao() {
		return usersDao;
	}

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}


}
