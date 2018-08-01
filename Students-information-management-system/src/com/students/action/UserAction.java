package com.students.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.students.entity.User;
import com.students.server.UserServer;

public class UserAction extends ActionSupport{
	public HttpServletRequest request;
	UserServer userServer;
	User user;
	ArrayList<User> list = new ArrayList<User>();
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public UserServer getUserServer() {
		return userServer;
	}

	public void setUserServer(UserServer userServer) {
		this.userServer = userServer;
	}
	public String execute() throws Exception{
		
		user.setUsername(username);
		user.setPassword(password);
		List<User> list = userServer.showAllUser();
		if(list.size()>0){
			Map session=ActionContext.getContext().getSession();
			session.put("login", user.getUsername());
			return "success";
		}else{
			return "error";
		}
		
	}
	
	public String logout(){
		Map session=ActionContext.getContext().getSession();
		session.remove("login");
		return "success";
	}
	public String showalluser() {
		list = (ArrayList<User>) userServer.showAllUser();
		request = ServletActionContext.getRequest();
		request.setAttribute("lists", list);
		return "success";
	}
	public String deleteUser() {
		request = ServletActionContext.getRequest();
		String temp = request.getParameter("id");
		int id = Integer.parseInt(temp);
		userServer.deleteUser(id);
		list = (ArrayList<User>) userServer.showAllUser();
		request.setAttribute("lists", list);
		return SUCCESS;
	}
	public String updataUser() {
		request = ServletActionContext.getRequest();
		//System.out.println(user.getId());
		userServer.updateUser(user, user.getId());
		list = (ArrayList<User>) userServer.showAllUser();
		request.setAttribute("lists", list);
		return SUCCESS;
	}
//	public String register(){
//		userServer.register(user);
//		return "success";
//	}
	public String addUser() {
		if (userServer.UserChek(user)) {
			request.setAttribute("error", "用户已经存在");
			return INPUT;
		} else {
			userServer.addUser(user);
			list = (ArrayList<User>) userServer.showAllUser();
			request.setAttribute("lists", list);
			return SUCCESS;
		}
	}

}
