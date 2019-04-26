package com.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name="description")
public class Dscription {

    private Integer descid;
    private String description;
    private String remark;
    private Set<EquipmentEntry> equipSet = new HashSet<EquipmentEntry>();

    public Dscription() {
    }

    public Dscription(String description, String remark, Set<EquipmentEntry> equipSet) {
        this.description = description;
        this.remark = remark;
        this.equipSet = equipSet;
    }

    public Integer getDescid() {
        return descid;
    }

    public void setDescid(Integer descid) {
        this.descid = descid;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Set<EquipmentEntry> getEquipSet() {
        return equipSet;
    }

    public void setEquipSet(Set<EquipmentEntry> equipSet) {
        this.equipSet = equipSet;
    }
}
