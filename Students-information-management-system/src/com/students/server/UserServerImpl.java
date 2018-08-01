package com.students.server;

import java.util.List;

import com.students.dao.UserDao;
import com.students.entity.User;

public class UserServerImpl implements UserServer{

	UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public boolean UserChek(User user) {
		return userDao.UserChek(user);
	}

	@Override
	public List<User> showAllUser() {

		return userDao.showAllUser();
	}
	public void deleteUser(int id) {
		userDao.deleteUer(id);
	}
	public void updateUser(User user, int id) {
		userDao.updateUser(user, id);
	}
//	public void register(User user) {
//		// TODO Auto-generated method stub
//		userDao.register(user);
//	}
	public boolean addUser(User user) {
		userDao.addUser(user);
		return true;
	}

}
