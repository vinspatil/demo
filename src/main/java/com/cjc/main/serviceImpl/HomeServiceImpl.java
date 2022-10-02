package com.cjc.main.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.model.Student;
import com.cjc.main.repository.HomeRepository;
import com.cjc.main.service.HomeService;
@Service
public class HomeServiceImpl implements HomeService {
	@Autowired
	HomeRepository hr;

	@Override
	public void saveStudent(Student s) {
		
		hr.save(s);
	}

	@Override
	public Student findAllByUnameAndPassword(String uname, String password) {
		
		
		return hr.findAllByUnameAndPassword(uname, password);
	}

	@Override
	public Iterable<Student> getAllData() {
		
		return hr.findAll();
	}

	@Override
	public Student editStudent(int id) {
		
		return hr.findAllById(id);
	}

	@Override
	public void deleteStudent(int id) {
		
		hr.deleteById(id);
		
	}

	
}
