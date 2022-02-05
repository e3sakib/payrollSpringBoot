package com.example.interfaceService;

import org.springframework.data.repository.CrudRepository;

import com.example.model.Employee;



public interface EmployeeService  extends CrudRepository<Employee, Integer> {

}
