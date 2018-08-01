package com.students.server;

import java.util.List;

import com.students.entity.User;
import com.students.dao.UserDao;

public interface UserServer {

	public boolean UserChek(User user);

	public List<User> showAllUser();
	public void deleteUser(int id);// 删除管理员
	public void updateUser(User user, int id);// 修改管理员信息
	//public void register(User user);
	public boolean addUser(User user);//添加管理员
	
}
