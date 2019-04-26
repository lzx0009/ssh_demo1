package com.service;

import com.entity.EquipmentEntry;
import com.entity.PageBean;

import java.util.List;

public interface EquipmentService {

    public PageBean<EquipmentEntry> findByPage(Integer currentPage);

    List<EquipmentEntry> findAll(EquipmentEntry equipmentEntry);


    EquipmentEntry findById(int equiID);

    void deleteEquipment(EquipmentEntry equipmentEntry);

    void addEquipment(EquipmentEntry equipmentEntry);

    void updateEquipment(EquipmentEntry equipmentEntry);

    void save(EquipmentEntry equipmentEntry);

    EquipmentEntry edit(int id);

    void borrow(Integer equiNum, Integer id);
}
