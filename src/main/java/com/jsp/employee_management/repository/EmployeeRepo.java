package com.jsp.employee_management.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jsp.employee_management.model.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Integer> {

}
