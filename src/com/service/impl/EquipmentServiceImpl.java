package com.service.impl;

import com.dao.EquipmentDao;
import com.entity.EquipmentEntry;
import com.entity.PageBean;
import com.service.EquipmentService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public class EquipmentServiceImpl implements EquipmentService {


    private EquipmentDao equipmentDao;

    public void setEquipmentDao(EquipmentDao equipmentDao) {
        this.equipmentDao = equipmentDao;
    }

    /**
     * 当前页数currPage;
     * 每页显示数量pageSize;
     * 总页数totalPage;
     * 总记录数totalCount;
     * @param currentPage
     * @return
     */
    @Override
    public PageBean<EquipmentEntry> findByPage(Integer currentPage) {
        PageBean<EquipmentEntry> pageBean = new PageBean<EquipmentEntry>();
        pageBean.setCurrPage(currentPage);
        int pageSize=7;
        pageBean.setPageSize(pageSize);
        int count = equipmentDao.findCount();
        pageBean.setTotalCount(count);
        if (count%pageSize==0){
            pageBean.setTotalPage(count/pageSize);
        }else {
            pageBean.setTotalPage(count/pageSize+1);
        }
        pageBean.setList(equipmentDao.findAll((currentPage-1)*pageSize, currentPage*pageSize));
        return pageBean;
    }

    @Override
    public List<EquipmentEntry> findAll(EquipmentEntry equipmentEntry) {
        return null;
    }



    @Override
    public EquipmentEntry findById(int equiID) {
        return null;
    }

    @Override
    public void deleteEquipment(EquipmentEntry equipmentEntry) {

    }

    @Override
    public void addEquipment(EquipmentEntry equipmentEntry) {

    }

    @Override
    public void updateEquipment(EquipmentEntry equipmentEntry) {
        equipmentDao.updateEquip(equipmentEntry);
    }

    @Override
    public void save(EquipmentEntry equipmentEntry) {
        equipmentDao.save(equipmentEntry);
        System.out.println("equipservice-----save------");
    }

    @Override
    public EquipmentEntry edit(int id) {
        return equipmentDao.edit(id);
    }

    @Override
    public void borrow(Integer equiNum, Integer id) {
        equipmentDao.borrow(equiNum, id);
    }
}
