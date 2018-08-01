package com.students.dao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.students.entity.Student;
import com.students.entity.User;


public class StudentDaoImpl implements StudentDao{
	SessionFactory sessionFactory;
	Student student;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Student> selectAllStudent() {
	Session session=sessionFactory.getCurrentSession();
	Transaction tx=session.beginTransaction();
	Query query=session.createQuery("from Student");
	   List<Student> studentlist=query.list();
	   session.close();
	   return studentlist;
	}
	public void deleteStudent(int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Student student=(Student)session.get(Student.class,id);
		//student.setId(id);
		session.delete(student);
		tx.commit();
		  
	}
	public void updateStudent(Student student, int id) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Student temp = (Student)session.get(Student.class, id);
		//System.out.println(temp);
		temp.setName(student.getName());
		temp.setAge(student.getAge());
		temp.setGender(student.getGender());
		temp.setGrade(student.getGrade());
		session.merge(temp);
		tx.commit();
	}
	public void addStudent(Student student) {
		Session session=sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
			session.save(student);
			tr.commit();
			//session.close();
	}
	public List<Student> selectStudentByName(String name){
		Session session=sessionFactory.getCurrentSession();
		Transaction tx=session.beginTransaction();
		Query query=session.createQuery("from Student s where s.name like ?");
		query.setParameter(0,"%"+name+"%");
		   List<Student> list=query.list();
		   tx.commit();
		   return list;
	}
	

}
