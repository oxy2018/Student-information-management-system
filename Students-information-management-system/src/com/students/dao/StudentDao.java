package com.students.dao;

import java.util.List;

import com.students.entity.Student;

public interface StudentDao {
	public List<Student> selectAllStudent();// 查询所有学生
	public void deleteStudent(int id);
	public void updateStudent(Student student, int id);// 更新学生信息
	public void addStudent(Student student);
	public List<Student> selectStudentByName(String name);// 根据学生姓名查询学生
	//public Student selectStudentByName(String name);


}
