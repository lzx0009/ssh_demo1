package com.entity;

import javax.persistence.*;
import java.sql.Date;
import java.util.Objects;

@Entity
@Table(name = "equipin", schema = "ssh_employee", catalog = "")
public class EquipinEntity {
    private int id;
    private int equipId;
    private String equipName;
    private int equipInNum;
    private Date inDate;
    private String equipComp;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "equip_id", nullable = false)
    public int getEquipId() {
        return equipId;
    }

    public void setEquipId(int equipId) {
        this.equipId = equipId;
    }

    @Basic
    @Column(name = "equip_name", nullable = false, length = 100)
    public String getEquipName() {
        return equipName;
    }

    public void setEquipName(String equipName) {
        this.equipName = equipName;
    }

    @Basic
    @Column(name = "equip_in_num", nullable = false)
    public int getEquipInNum() {
        return equipInNum;
    }

    public void setEquipInNum(int equipInNum) {
        this.equipInNum = equipInNum;
    }

    @Basic
    @Column(name = "in_date", nullable = false)
    public Date getInDate() {
        return inDate;
    }

    public void setInDate(Date inDate) {
        this.inDate = inDate;
    }

    @Basic
    @Column(name = "equip_comp", nullable = false, length = 100)
    public String getEquipComp() {
        return equipComp;
    }

    public void setEquipComp(String equipComp) {
        this.equipComp = equipComp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        EquipinEntity that = (EquipinEntity) o;
        return id == that.id &&
                equipId == that.equipId &&
                equipInNum == that.equipInNum &&
                Objects.equals(equipName, that.equipName) &&
                Objects.equals(inDate, that.inDate) &&
                Objects.equals(equipComp, that.equipComp);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, equipId, equipName, equipInNum, inDate, equipComp);
    }
}
