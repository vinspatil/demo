package com.cjc.main.service;

import com.cjc.main.model.Student;

public interface HomeService {

	public void saveStudent(Student s);
	public Student findAllByUnameAndPassword(String uname,String password);
	public Iterable<Student> getAllData();
	public Student editStudent(int id);
	public void deleteStudent(int id);
	

}
