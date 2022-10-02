package com.cjc.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cjc.main.model.Student;
import com.cjc.main.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService hs;
	
	@RequestMapping("/")
	public String preLogin() {
		
		return "login";
	}
	
	@RequestMapping("/reg")
	public String preRegister() {		
		return "register";
	}
	
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute Student s) {		
		hs.saveStudent(s);		
		return "login";
	}
	@RequestMapping("/logincheck")
	public String lohincheck(@RequestParam("uname") String uname,@RequestParam("password") String password,Model m) {
		
		Student s = hs.findAllByUnameAndPassword(uname, password);	
		if(s!=null) {
			Iterable<Student> data = hs.getAllData();			
			m.addAttribute("data",data);
			return "success";
		}
		else {			
			m.addAttribute("msg","Invalid Crediatials");			
			return "login";
		}
	}	
	@RequestMapping("/edit")
	public String editStudent(@RequestParam("id") int id,Model m) {		
		Student s=hs.editStudent(id);		
		m.addAttribute("stu",s);
		return "edit";
	}
	
	@RequestMapping("/update")
	public String updateStudent(@ModelAttribute Student s,Model m) {
		hs.saveStudent(s);		
		Iterable<Student> data = hs.getAllData();		
		m.addAttribute("data",data);		
		return "success";
	}
	
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam("id") int id,Model m) {		
		hs.deleteStudent(id);	
		Iterable<Student> data = hs.getAllData();
		m.addAttribute("data",data);
		return "success";
	}
	
}
