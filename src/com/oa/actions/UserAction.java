package com.oa.actions;

import java.util.List;
import java.util.Map;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.AllowedMethods;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;

import com.oa.entity.Users;
import com.oa.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
@AllowedMethods(value={"findAll","saveUsers","login","findById","updateUsers","deleteUsers"})
@Action(value="userAction",
results={
		@Result(name="loginSuccess",location="/login_success.jsp"),
		@Result(name="login",location="/index.jsp"),
		@Result(name="success",location="/login_success.jsp"),
})
public class UserAction extends ActionSupport{

	private Users users;
	@Autowired
	private UserService userService;
	private Map request =(Map) ActionContext.getContext().get("request");
	
	public String login(){
		Users u=userService.login(users.getName(), users.getPassword());
		if (u!=null) {
			Map session =ActionContext.getContext().getSession();
			session.put("u", u);
			return "loginSuccess";
		}else {
			return LOGIN;
		}
	}
	
	public String saveUsers(){
		int result=userService.saveUsers(users);
		if (result>0) {
			return SUCCESS;
		}else {
			return null;
		}
	}

	public String findAll(){
		List<Users> list=userService.findAll();
		request.put("list", list);
		return SUCCESS;
	}
	//查找
	public String findById(){
		Users u=userService.findById(users.getId());
		request.put("u", u);
		return "findById";
	}
	//更新
	public String updateUsers(){
		userService.updateUsers(users);
		return findAll();
	}
	//删除
	public String deleteUsers(){
		userService.deleteUsers(users);
		return findAll();
	}


	
	
	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Map getRequest() {
		return request;
	}

	public void setRequest(Map request) {
		this.request = request;
	}
	

}
