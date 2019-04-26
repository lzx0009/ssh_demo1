package com.dao.impl;

import com.dao.EquipmentDao;
import com.entity.EquipmentEntry;
import org.hibernate.Query;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class EquipmentDaoImpl extends HibernateDaoSupport implements EquipmentDao {
    @Override
    public List<EquipmentEntry> findAll(int startpage, int endpage) {
        DetachedCriteria detachedCriteria = DetachedCriteria.forClass(EquipmentEntry.class);
        List<EquipmentEntry> list = (List<EquipmentEntry>) this.getHibernateTemplate().findByCriteria(detachedCriteria,startpage,endpage);
//        Query query = getSession().createQuery("from EquipmentEntry");
//        query.setFirstResult(startpage);
//        query.setMaxResults(9);
//        System.out.println(query.list().toString()+"-------------===================-------------------=-");
        System.out.println(list.toString());
        return list;
//        return query.list();
    }

    @Override
    public void findById(int id) {

    }

    @Override
    public int findCount() {
        String hql = "select count(*) from EquipmentEntry";
        List<Long> list = (List<Long>) this.getHibernateTemplate().find(hql);
        if(list.size()>0){
            System.out.println("---------------����size���---------"+list.get(0).toString());
            return list.get(0).intValue();
        }
        return 0;
    }

    @Override
    public void updateEquip(EquipmentEntry equipmentEntry) {
        System.out.println("updateEquipment---------------");
        this.getHibernateTemplate().update(equipmentEntry);
    }

    @Override
    public void deleteEquip(EquipmentEntry equipmentEntry) {

    }

    @Override
    public void findByClass(String quipClass) {

    }

    @Override
    public void save(EquipmentEntry equipmentEntry) {
        this.getHibernateTemplate().save(equipmentEntry);
        System.out.println("equidao----------save-------");
    }

    @Override
    public EquipmentEntry edit(int id) {
        System.out.println("��ʼִ��equipmentdao------edit------");
        return (EquipmentEntry) this.getHibernateTemplate().get(EquipmentEntry.class,id);
    }

    @Override
    public void borrow(Integer equiNum ,Integer id) {

        String hql = "update EquipmentEntry set equiNum = :equiNum where id = :id";
//        this.getHibernateTemplate().find(hql,equiNum,id);
        Query query = this.getHibernateTemplate().getSessionFactory().getCurrentSession().createQuery(hql);
        query.setParameter("equiNum",equiNum);
        query.setParameter("id",id);
        System.out.println("ִ��borrow-----dao-----------update----------");
        query.executeUpdate();
    }
}
