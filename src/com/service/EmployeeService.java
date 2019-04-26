package com.service;

import com.entity.Employee;
import com.entity.PageBean;

public interface EmployeeService {

	Employee login(Employee employee);

	PageBean<Employee> findByPage(Integer currPage);

	void saveEmployee(Employee employee);

	void update(Employee employee);

	Employee findById(Integer eid);

	void delete(Employee employee);

}
