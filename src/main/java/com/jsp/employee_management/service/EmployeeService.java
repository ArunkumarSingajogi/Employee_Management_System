package com.jsp.employee_management.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jsp.employee_management.model.Employee;
import com.jsp.employee_management.repository.EmployeeRepo;

@Service
public class EmployeeService {
   
	@Autowired
    private EmployeeRepo employeeRepo;
	
	public List<Employee> getAllEmployees(){
		ArrayList<Employee> employees=new ArrayList<Employee>();
		employeeRepo.findAll().forEach(employee -> employees.add(employee));
		return employees;
	}
	
	public Employee getEmployeeById(int id) {
		return employeeRepo.findById(id).get();
	}
	
	public boolean updateStetus(int id) {
		Employee employee=getEmployeeById(id);
		employee.seteStetus("Completed");
		return updateEmployee(employee);
	}
	
	public boolean updateEmployee(Employee employee) {
		Employee employee2= employeeRepo.save(employee);
		
		if(getEmployeeById(employee2.geteId())!= null){
			return true;
		}
		return false; 
	}
	
	public boolean deleteEmployee(int id) {
		employeeRepo.deleteById(id);
		
		if(employeeRepo.findById(id).isEmpty()){
			return true;
		}
		return false; 
	}
}
