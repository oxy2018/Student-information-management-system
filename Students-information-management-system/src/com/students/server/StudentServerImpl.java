package com.students.server;

import java.util.ArrayList;
import java.util.List;

import com.students.dao.StudentDao;
import com.students.entity.Student;


public class StudentServerImpl implements StudentServer{
	
	StudentDao studentDao;
	
	public StudentDao getStudentDao() {
		return studentDao;
	}

	public void setStudentDao(StudentDao studentDao) {
		this.studentDao = studentDao;
	}

	public List<Student> selectAllStudent() {
		List<Student> lists = studentDao.selectAllStudent();
		return lists;
	}
	public void deleteStudent(int id) {
		studentDao.deleteStudent(id);
	}
	public void updateStudent(Student student, int id) {
		studentDao.updateStudent(student, id);
	}
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		studentDao.addStudent(student);
	}
	public List<Student> selectStudentByName(String name) {
		List<Student> student =studentDao.selectStudentByName(name);
		System.out.println(student);
		return student;
	}


}
