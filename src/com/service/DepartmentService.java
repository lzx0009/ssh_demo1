package com.service;

import com.entity.Department;
import com.entity.PageBean;

import java.util.List;

/**
 * 部门管理的业务层接口实现类
 * @author hope
 */
public interface DepartmentService {

	PageBean<Department> findByPage(Integer currPage);

	void save(Department department);

	void update(Department department);

	Department findById(Integer did);

	void delete(Department department);

	List<Department> findAll();


}
