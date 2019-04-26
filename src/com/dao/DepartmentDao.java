package com.dao;

import com.entity.Department;

import java.util.List;

/**
 * 部门管理的Dao层接口
 * @author hope
 */
public interface DepartmentDao {

	int findCount();

	List<Department> findByPage(int begin, int pageSize);

	void save(Department department);

	void update(Department department);

	Department findById(Integer did);

	void delete(Department department);

	List<Department> findAll();

}
