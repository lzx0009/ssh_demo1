package com.dao;

import com.entity.EquipmentEntry;

import java.util.List;

public interface EquipmentDao {

    List<EquipmentEntry> findAll(int startpage, int endpage);

    void findById(int id);

    int findCount();

    void updateEquip(EquipmentEntry equipmentEntry);

    void deleteEquip(EquipmentEntry equipmentEntry);

    void findByClass(String quipClass);

    void save(EquipmentEntry equipmentEntry);

    EquipmentEntry edit(int id);

    void borrow(Integer equiNum, Integer id);
}
