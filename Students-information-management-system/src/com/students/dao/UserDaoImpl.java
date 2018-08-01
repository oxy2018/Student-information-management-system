package com.students.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.transaction.annotation.Transactional;

import com.students.entity.User;

@Transactional
public class UserDaoImpl implements UserDao{
	User user;
	public SessionFactory sessionFactory;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public boolean UserChek(User user) {
		List<User> list = showAllUser();
		for (User temp : list) {
			if (temp.getName().equals(user.getName())) {
				return true;
			}
		}
		return false;
	}

	public List<User> showAllUser() {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		List<User> list = session.createQuery("FROM User").list();
		session.close();
		return list;
	}
		
	public void deleteUer(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		User temp = new User();
		temp.setId(id);
		//User temp=(User)session.get(User.class,id);
		session.delete(temp);
		tx.commit();
		  
	}
	public void updateUser(User user, int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		User temp = (User) session.get(User.class, id);
		temp.setName(user.getName());
		temp.setPassword(user.getPassword());
		temp.setUsername(user.getUsername());
		session.merge(temp);
		tx.commit();
	}
//	public void register(User user){
//		
//		Session session = sessionFactory.openSession();
//		Transaction tr = session.beginTransaction();
//			session.save(user);
//			tr.commit();
//			session.close();		
//	}

	public boolean addUser(User user) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		session.save(user);
		tx.commit();
		return false;
	}
}
