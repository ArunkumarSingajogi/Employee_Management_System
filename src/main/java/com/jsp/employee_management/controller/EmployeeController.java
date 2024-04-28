package com.jsp.employee_management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jsp.employee_management.model.Employee;
import com.jsp.employee_management.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping({"/", "viewEmployeeList"})
	public String viewAllEmployees(Model model, @ModelAttribute("message") String message) {
	    model.addAttribute("list",employeeService.getAllEmployees());
	    model.addAttribute("message", message);
	    return "ViewEmployeeList";
	}
	
	@GetMapping("/updateEmployeeStetus/{id}")
	public String updateEmployeeStetus(@PathVariable int id, RedirectAttributes redirectAttributes) {
	   if(employeeService.updateStetus(id)) {
		   redirectAttributes.addFlashAttribute("message", "Update Success");
		   return "redirect:/viewEmployeeList";
	   }
	   redirectAttributes.addFlashAttribute("message", "Update Failure");
	   return "redirect:/viewEmployeeList";
	}
	
	@GetMapping("/addEmployee")
	public String addEmployee(Model model) {
		model.addAttribute("employee", new Employee());
		return "AddEmplolyee";
	}
	
	@PostMapping("/saveEmployee")
	public String saveEmployee(Employee employee, RedirectAttributes redirectAttributes) {
	   if(employeeService.updateEmployee(employee)) {
		  redirectAttributes.addFlashAttribute("message", "Save Success");
		  return "redirect:/viewEmployeeList";
	   }
	      redirectAttributes.addFlashAttribute("message", "Save Failure");
	      return "redirect:/addEmplolyee";
	}
	
	@GetMapping("/editEmployee/{id}")
	public String editEmlpoyee(@PathVariable int id, Model model) {
	    model.addAttribute("employee",employeeService.getEmployeeById(id));
	    
	    return "EditEmployee";
	}
	
	@PostMapping("/editSaveEmployee")
	public String editSaveEmployee(Employee employee, RedirectAttributes redirectAttributes) {
		if(employeeService.updateEmployee(employee)) {
			redirectAttributes.addFlashAttribute("message", "Edit Success");
			return "redirect:/viewEmployeeList";
		}
		redirectAttributes.addFlashAttribute("message", "Edit Failure");
		return "redirect:/editEmployee/" + employee.geteId();
	}
	
	@GetMapping("/deleteEmployee/{id}")
	public String deleteEmployee(@PathVariable int id, RedirectAttributes redirectAttributes) {
		if(employeeService.deleteEmployee(id)) {
			redirectAttributes.addFlashAttribute("message", "Delete Success");
			return "redirect:/viewEmployeeList";	
		}
		redirectAttributes.addFlashAttribute("message", "Delete Failure");
		return "redirect:/viewEmployeeList";
	}
}
