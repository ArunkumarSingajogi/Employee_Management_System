package com.jsp.employee_management.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Employee {
	
	
   @Id
   @GeneratedValue(strategy = GenerationType.AUTO)
   private int eId;
   private String eName;
   private String eMail;
   private String ePhone;
   private double eSalary;
   private String eManager;
   private String eStetus;
public String geteStetus() {
	return eStetus;
}
public void seteStetus(String eStetus) {
	this.eStetus = eStetus;
}
public int geteId() {
	return eId;
}
public void seteId(int eId) {
	this.eId = eId;
}
public String geteName() {
	return eName;
}
public void seteName(String eName) {
	this.eName = eName;
}
public String geteMail() {
	return eMail;
}
public void seteMail(String eMail) {
	this.eMail = eMail;
}
public String getePhone() {
	return ePhone;
}
public void setePhone(String ePhone) {
	this.ePhone = ePhone;
}
public double geteSalary() {
	return eSalary;
}
public void seteSalary(double eSalary) {
	this.eSalary = eSalary;
}
public String geteManager() {
	return eManager;
}
public void seteManager(String eManager) {
	this.eManager = eManager;
}
   
}
