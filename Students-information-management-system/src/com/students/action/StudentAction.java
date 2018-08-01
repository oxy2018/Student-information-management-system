package com.students.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.students.entity.Student;
import com.students.entity.User;
import com.students.server.StudentServer;

public class StudentAction extends ActionSupport{
	StudentServer studentServer;
	Student s;
	String name;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public Student getS() {
		return s;
	}

	public void setS(Student s) {
		this.s = s;
	}

	public StudentServer getStudentServer() {
		return studentServer;
	}

	public void setStudentServer(StudentServer studentServer) {
		this.studentServer = studentServer;
	}

	List<Student> lists;

	public List<Student> getLists() {
		return lists;
	}

	public void setLists(List<Student> lists) {
		this.lists = lists;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public HttpServletRequest request;
	
	public String showAllStudent() {
		lists = studentServer.selectAllStudent();
		request = ServletActionContext.getRequest();
		request.setAttribute("lists", lists);
		return SUCCESS;
	}
	public String deleteStudent() {
		System.out.println("test");
		request = ServletActionContext.getRequest();
		String temp = request.getParameter("id");
		//System.out.println(temp);
		int id = Integer.parseInt(temp);
		studentServer.deleteStudent(id);
		lists = (ArrayList<Student>) studentServer.selectAllStudent();
		request.setAttribute("lists", lists);
		return SUCCESS;
	}
	public String updataStudent() {
//		System.out.println("test");
//		System.out.println(s.getId());
		studentServer.updateStudent(s, s.getId());
		lists = (ArrayList<Student>) studentServer.selectAllStudent();
		request = ServletActionContext.getRequest();
		request.setAttribute("lists", lists);
		return SUCCESS;
	}
	public String addS() throws Exception {
		studentServer.addStudent(s);
		lists = (ArrayList<Student>) studentServer.selectAllStudent();
		request = ServletActionContext.getRequest();
		request.setAttribute("lists", lists);
		return SUCCESS;
	}
	public String selectStudent() {	
		
		List<Student> student = studentServer.selectStudentByName(this.name);
		//Student student = serverImp.selectStudentByName(request.getParameter("name"));
		//Student s = (Student)student.iterator().next();
		request = ServletActionContext.getRequest();
		request.setAttribute("student", student);
		request.setAttribute("s", student);
		System.out.println(request.getAttribute("student"));
		return SUCCESS;
	}

	



}
