package com.dao.impl;

import com.dao.DepartmentDao;
import com.entity.Department;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * ���Ź����Dao��ʵ����
 * @author hope
 */
public class DepartmentDaoImpl extends HibernateDaoSupport implements DepartmentDao {

	@Override
	public int findCount() {
		// TODO Auto-generated method stub
		String hql = "select count(*) from Department";
		List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
		if(list.size()>0){
			return list.get(0).intValue();
		}
		return 0;
	}

	@Override
	public List<Department> findByPage(int begin, int pageSize) {
		// TODO Auto-generated method stub
		DetachedCriteria criteria = DetachedCriteria.forClass(Department.class);
		// ��ѯ��ҳ����
		List<Department> list = (List<Department>) this.getHibernateTemplate().findByCriteria(criteria,begin,pageSize);
		return list;
	}

	@Override
	/**
	 * Dao����Ӳ��ŵ�ʵ�ַ���
	 */
	public void save(Department department) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(department);
	}

	@Override
	/**
	 * ����id��ѯ���ŵ�Daoʵ��
	 */
	public Department findById(Integer did) {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().get(Department.class, did);
	}

	@Override
	/**
	 * Dao�и��²��ŵ�ʵ�ַ���
	 */
	public void update(Department department) {
		// TODO Auto-generated method stub
		
		this.getHibernateTemplate().update(department);
	}

	@Override
	/**
	 * Dao��ɾ�����ŵ�ʵ�ַ���
	 */
	public void delete(Department department) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(department);
	}

	@Override
	/**
	 * Dao ��ѯ���в���
	 */
	public List<Department> findAll() {
		// TODO Auto-generated method stub
		return (List<Department>) this.getHibernateTemplate().find("from Department");
	}
}
