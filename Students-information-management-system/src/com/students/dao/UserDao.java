package com.students.dao;

import java.util.List;

import com.students.entity.User;


public interface UserDao {

	public boolean UserChek(User user);
	public List<User> showAllUser();
	public void deleteUer(int id);// 删除管理员
	public void updateUser(User user, int id);// 修改管理员信息
	//public void register(User user);// register管理员
	public boolean addUser(User user);//添加管理员
	
}
