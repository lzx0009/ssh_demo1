package com.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Employee entity. @hope Eclipse Tools
 */

@Entity
@Table(name = "employee")
public class Employee implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	// 员工id
	private Integer eid;
    // 员工部门
	private Department department;
	// 员工name
	private String ename;
	// 员工sex
	private String sex;
	// 生日
	private Date birthday;
	// 加入时间
	private Date joinDate;
	// 员工编号
	private String eno;
	private String username;
	private String password;
	private int user_type;


	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Date getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}

	public String getEno() {
		return eno;
	}

	public void setEno(String eno) {
		this.eno = eno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUser_type() {
		return user_type;
	}

	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}

	public Employee() {
	}

	public Employee(Integer eid, Department department, String ename, String sex, Date birthday, Date joinDate, String eno, String username, String password, int user_type) {
		this.eid = eid;
		this.department = department;
		this.ename = ename;
		this.sex = sex;
		this.birthday = birthday;
		this.joinDate = joinDate;
		this.eno = eno;
		this.username = username;
		this.password = password;
		this.user_type = user_type;
	}
}